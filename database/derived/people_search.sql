-- derived-tables: enigma.people_search enigma.people_tokfreq
-- fingerprint: SELECT coalesce(max(personid), 0)::text FROM enigma.people
-- size-gb: 7
-- backup: exclude-data
--
-- People search (/dbpub/searchpeople.asp) as an inverted, name-ordered table.
--
-- The page's full-text query matched on a GIN index over enigma.people (14.5M
-- rows) but then had to fetch EVERY match from the heap and sort it before its
-- LIMIT 500: "john" is 628k rows, "jayne" 35k rows on ~31k heap pages -- tens to
-- hundreds of MB of random reads cold, past the 8 s timeout (WEBBSITE-3C). No
-- index on people fixes that: GIN can neither return rows in order nor cover
-- columns.
--
-- Here each (lexeme, person) is one row, stored physically in (token, name1,
-- name2, personid) order with a btree on the same key, so "the first 500 people
-- with lexeme X, by name" is a handful of contiguous pages whatever X is. The
-- lexemes come from every expression the page searches (dn1 || dn2, and dn1 and
-- dn2 alone for its d=1 mode: '<a' and 'b>' parse differently apart than together
-- as one tag), so a match on the page always has its lexemes here. people_tokfreq counts rows per lexeme, so
-- the route can drive a multi-word search from its rarest word.
--
-- Built by scripts/build_derived.sh into *_new tables and swapped in; this file
-- only ever names the _new objects. Rebuilt when the fingerprint (the newest
-- personid) moves; enigma.people is not written by the refresh loader today.

CREATE TABLE enigma.people_search_new AS
SELECT l.token, p.name1, p.name2, p.personid, p.cname, p.yob, p.mob, p.dob, p.dn1, p.dn2
FROM enigma.people p
CROSS JOIN LATERAL unnest(tsvector_to_array(
    to_tsvector('simple', COALESCE(p.dn1, '') || ' ' || COALESCE(p.dn2, ''))
    || to_tsvector('simple', COALESCE(p.dn1, ''))
    || to_tsvector('simple', COALESCE(p.dn2, '')))) AS l(token)
ORDER BY l.token, p.name1, p.name2, p.personid;

CREATE INDEX people_search_new_key
    ON enigma.people_search_new (token, name1, name2, personid);

CREATE TABLE enigma.people_tokfreq_new AS
SELECT token, count(*)::integer AS n
FROM enigma.people_search_new
GROUP BY token;

ALTER TABLE enigma.people_tokfreq_new
    ADD CONSTRAINT people_tokfreq_new_pkey PRIMARY KEY (token);
