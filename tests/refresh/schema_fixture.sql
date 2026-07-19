-- Loader-surface schema fixture for local refresh.py validation.
--
-- NOT a restore: just the tables the loader touches, copied from
-- database/migrations/001_post_pgloader.sql (same columns, PKs, the
-- issuedshares trigger + FK), plus a MINIMAL enigma.issue (the loader only
-- reads id1 for the FK-quarantine check) and the webbsite_refresh role with
-- exactly the runbook's grants — so role-parity negatives (DELETE must fail)
-- run locally too.
--
-- Usage (fresh scratch database):
--   createdb -h localhost -U postgres enigma_pg_refreshtest
--   psql -h localhost -U postgres -d enigma_pg_refreshtest -f tests/refresh/schema_fixture.sql

CREATE SCHEMA IF NOT EXISTS ccass;
CREATE SCHEMA IF NOT EXISTS enigma;

CREATE TABLE ccass.holdings (
    partid integer NOT NULL,
    issueid integer NOT NULL,
    holding bigint NOT NULL,
    atdate date NOT NULL,
    PRIMARY KEY (issueid, partid, atdate)
);

CREATE TABLE ccass.parthold (
    partid integer NOT NULL,
    issueid integer NOT NULL,
    holding bigint NOT NULL,
    atdate date NOT NULL,
    PRIMARY KEY (partid, issueid, atdate)
);

CREATE TABLE ccass.dailylog (
    atdate date NOT NULL,
    issueid integer NOT NULL,
    intermedhldg numeric DEFAULT '0'::numeric NOT NULL,
    intermedcnt integer DEFAULT 0 NOT NULL,
    nciphldg numeric DEFAULT '0'::numeric NOT NULL,
    ncipcnt integer DEFAULT 0 NOT NULL,
    ciphldg numeric DEFAULT '0'::numeric NOT NULL,
    cipcnt integer DEFAULT 0 NOT NULL,
    c5 numeric DEFAULT '0'::numeric NOT NULL,
    c10 numeric DEFAULT '0'::numeric NOT NULL,
    custhldg numeric DEFAULT '0'::numeric NOT NULL,
    brokhldg numeric DEFAULT '0'::numeric NOT NULL,
    PRIMARY KEY (issueid, atdate)
);

CREATE TABLE ccass.bigchanges (
    atdate date NOT NULL,
    issueid integer NOT NULL,
    partid integer NOT NULL,
    stkchg double precision,
    prevdate date,
    PRIMARY KEY (atdate, issueid, partid)
);

CREATE TABLE ccass.quotes (
    issueid integer NOT NULL,
    atdate date NOT NULL,
    prevclose double precision DEFAULT '0'::double precision,
    closing double precision DEFAULT '0'::double precision NOT NULL,
    ask double precision DEFAULT '0'::double precision NOT NULL,
    bid double precision DEFAULT '0'::double precision NOT NULL,
    high double precision DEFAULT '0'::double precision NOT NULL,
    low double precision DEFAULT '0'::double precision NOT NULL,
    vol numeric DEFAULT '0'::numeric NOT NULL,
    turn numeric DEFAULT '0'::numeric NOT NULL,
    susp boolean NOT NULL,
    newsusp boolean NOT NULL,
    noclose boolean NOT NULL,
    PRIMARY KEY (issueid, atdate)
);
CREATE UNIQUE INDEX quotes_nozero ON ccass.quotes (issueid, noclose, atdate);

CREATE TABLE ccass.pquotes (
    issueid integer NOT NULL,
    atdate date NOT NULL,
    prevclose double precision DEFAULT '0'::double precision NOT NULL,
    closing double precision DEFAULT '0'::double precision NOT NULL,
    ask double precision DEFAULT '0'::double precision NOT NULL,
    bid double precision DEFAULT '0'::double precision NOT NULL,
    high double precision DEFAULT '0'::double precision NOT NULL,
    low double precision DEFAULT '0'::double precision NOT NULL,
    vol numeric DEFAULT '0'::numeric NOT NULL,
    turn numeric DEFAULT '0'::numeric NOT NULL,
    susp boolean NOT NULL,
    newsusp boolean NOT NULL,
    noclose boolean NOT NULL,
    PRIMARY KEY (issueid, atdate)
);

CREATE TABLE ccass.unquotes (
    stockcode integer NOT NULL,
    atdate date NOT NULL,
    prevclose double precision DEFAULT '0'::double precision,
    closing double precision DEFAULT '0'::double precision NOT NULL,
    ask double precision DEFAULT '0'::double precision NOT NULL,
    bid double precision DEFAULT '0'::double precision NOT NULL,
    high double precision DEFAULT '0'::double precision NOT NULL,
    low double precision DEFAULT '0'::double precision NOT NULL,
    vol numeric DEFAULT '0'::numeric NOT NULL,
    turn numeric DEFAULT '0'::numeric NOT NULL,
    susp boolean NOT NULL,
    newsusp boolean NOT NULL,
    noclose boolean NOT NULL,
    PRIMARY KEY (stockcode, atdate)
);
CREATE UNIQUE INDEX unquotes_nozero ON ccass.unquotes (stockcode, noclose, atdate);

CREATE TABLE ccass.calendar (
    tradedate date NOT NULL,
    settledate date NOT NULL,
    deferred boolean NOT NULL,
    PRIMARY KEY (tradedate)
);

-- Minimal issue dimension: the loader reads ONLY id1 (FK + quarantine).
CREATE TABLE enigma.issue (
    id1 integer NOT NULL PRIMARY KEY
);

CREATE TABLE enigma.issuedshares (
    issueid integer DEFAULT 0 NOT NULL,
    atdate date NOT NULL,
    outstanding double precision,
    modified timestamp with time zone,
    userid integer DEFAULT 0 NOT NULL,
    PRIMARY KEY (issueid, atdate),
    CONSTRAINT issuedshares_issue FOREIGN KEY (issueid)
        REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE CASCADE
);

CREATE FUNCTION enigma.on_update_current_timestamp_issuedshares() RETURNS trigger
    LANGUAGE plpgsql AS $$
BEGIN
   NEW.modified = now();
   RETURN NEW;
END;
$$;
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.issuedshares
    FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_issuedshares();

CREATE TABLE enigma.log (
    name character varying(255) NOT NULL PRIMARY KEY,
    val character varying(255) NOT NULL,
    descrip character varying(255) DEFAULT NULL::character varying
);

-- The frozen-era watermarks (the loader's pre-flight requires these to exist).
INSERT INTO enigma.log (name, val) VALUES
    ('CCASSdateDone', '2025-10-17'),
    ('MBquotesDate', '2025-10-10'),
    ('GEMquotesDate', '2025-10-10');

-- ---------------------------------------------------------------------------
-- The restricted loader role — EXACTLY the runbook's grants (deploy/README.md)
-- so local role-parity negatives (DELETE/TRUNCATE/DDL must all fail) mean
-- something. NO DELETE, NO TRUNCATE, NO DDL.
-- ---------------------------------------------------------------------------
DO $$ BEGIN
    CREATE ROLE webbsite_refresh LOGIN PASSWORD 'refreshtest';
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

GRANT CONNECT, TEMPORARY ON DATABASE enigma_pg_refreshtest TO webbsite_refresh;
GRANT USAGE ON SCHEMA ccass, enigma TO webbsite_refresh;
GRANT SELECT, INSERT, UPDATE ON
    ccass.holdings, ccass.parthold, ccass.dailylog, ccass.bigchanges,
    ccass.quotes, ccass.pquotes, ccass.unquotes, ccass.calendar,
    enigma.issuedshares
    TO webbsite_refresh;
GRANT SELECT ON enigma.issue TO webbsite_refresh;
GRANT SELECT, UPDATE (val) ON enigma.log TO webbsite_refresh;
GRANT MAINTAIN ON
    ccass.holdings, ccass.parthold, ccass.dailylog, ccass.bigchanges,
    ccass.quotes, ccass.pquotes, ccass.unquotes, ccass.calendar,
    enigma.issuedshares
    TO webbsite_refresh;
