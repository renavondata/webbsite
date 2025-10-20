# PostgreSQL Database Comparison Report

**Local Database:** `enigma_pg` on localhost

**Remote Database:** `enigma_7qtw` on Render.com (Oregon)

---

## Summary

| Object Type | Identical | Only Local | Only Remote | Different |
|-------------|-----------|------------|-------------|----------|
| Schemas | 3 | 2 | 0 | 0 |
| Views | 0 | 4 | 0 | 0 |
| Functions | 34 | 0 | 0 | 0 |
| Triggers | 0 | 0 | 0 | 33 |
| Indexes | 389 | 0 | 0 | 0 |
| Constraints | 201 | 0 | 0 | 130 |
| Sequences | 66 | 0 | 0 | 0 |

---

## Schemas

### Only in Local (2)

- `pg_temp_24`
- `pg_toast_temp_24`

### Identical: 3

---

## Views

### Only in Local (4)

- `enigma.listedcoshk`
- `enigma.listedcoshkever`
- `enigma.webholders3`
- `enigma.webholdings3`

---

## Functions

### Identical: 34

---

## Triggers

### Different Definitions (33)

#### `enigma.adviserships.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.adviserships FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_adviserships()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.adviserships FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_adviserships()
```

#### `enigma.comeets.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.comeets FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_comeets()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.comeets FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_comeets()
```

#### `enigma.compos.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.compos FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_compos()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.compos FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_compos()
```

#### `enigma.directorships.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.directorships FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_directorships()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.directorships FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_directorships()
```

#### `enigma.documents.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.documents FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_documents()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.documents FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_documents()
```

#### `enigma.entitlements.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.entitlements FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_entitlements()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.entitlements FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_entitlements()
```

#### `enigma.ess.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.ess FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_ess()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.ess FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_ess()
```

#### `enigma.events.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.events FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_events()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.events FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_events()
```

#### `enigma.govac.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.govac FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_govac()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.govac FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_govac()
```

#### `enigma.hkexdata.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.hkexdata FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_hkexdata()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.hkexdata FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_hkexdata()
```

#### `enigma.issuedshares.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.issuedshares FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_issuedshares()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.issuedshares FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_issuedshares()
```

#### `enigma.judgments.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.judgments FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_judgments()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.judgments FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_judgments()
```

#### `enigma.licrec.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.licrec FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_licrec()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.licrec FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_licrec()
```

#### `enigma.lsadm.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.lsadm FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_lsadm()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.lsadm FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_lsadm()
```

#### `enigma.lsemps.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.lsemps FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_lsemps()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.lsemps FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_lsemps()
```

#### `enigma.lsppl.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.lsppl FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_lsppl()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.lsppl FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_lsppl()
```

#### `enigma.namechanges.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.namechanges FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_namechanges()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.namechanges FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_namechanges()
```

#### `enigma.namesex.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.namesex FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_namesex()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.namesex FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_namesex()
```

#### `enigma.oldlsppl.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.oldlsppl FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_oldlsppl()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.oldlsppl FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_oldlsppl()
```

#### `enigma.olicrec.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.olicrec FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_olicrec()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.olicrec FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_olicrec()
```

#### `enigma.organisations.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.organisations FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_organisations()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.organisations FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_organisations()
```

#### `enigma.orgdata.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.orgdata FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_orgdata()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.orgdata FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_orgdata()
```

#### `enigma.ownerprof.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.ownerprof FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_ownerprof()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.ownerprof FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_ownerprof()
```

#### `enigma.pay.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.pay FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_pay()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.pay FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_pay()
```

#### `enigma.people.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.people FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_people()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.people FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_people()
```

#### `enigma.prhflat.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.prhflat FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_prhflat()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.prhflat FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_prhflat()
```

#### `enigma.relatives.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.relatives FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_relatives()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.relatives FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_relatives()
```

#### `enigma.sdi.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.sdi FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_sdi()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.sdi FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_sdi()
```

#### `enigma.sholdings.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.sholdings FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_sholdings()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.sholdings FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_sholdings()
```

#### `enigma.snaplog.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.snaplog FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_snaplog()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.snaplog FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_snaplog()
```

#### `enigma.stocklistings.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.stocklistings FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_stocklistings()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.stocklistings FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_stocklistings()
```

#### `enigma.uklog.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.uklog FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_uklog()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.uklog FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_uklog()
```

#### `enigma.uknonhuman.on_update_current_timestamp`

**Local:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.uknonhuman FOR EACH ROW EXECUTE FUNCTION on_update_current_timestamp_uknonhuman()
```

**Remote:**
```sql
CREATE TRIGGER on_update_current_timestamp BEFORE UPDATE ON enigma.uknonhuman FOR EACH ROW EXECUTE FUNCTION enigma.on_update_current_timestamp_uknonhuman()
```

---

## Indexes

### Identical: 389

---

## Constraints

### Different Definitions (130)

#### `enigma.acitems.datasource`

**Local:**
```sql
f: FOREIGN KEY (datasource) REFERENCES datasource(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (datasource) REFERENCES enigma.datasource(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.advisers.fk_advisers_orgs`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.adviserships.fk_adviserships_adviser`

**Local:**
```sql
f: FOREIGN KEY (adviser) REFERENCES advisers(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (adviser) REFERENCES enigma.advisers(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.adviserships.fk_adviserships_orgs`

**Local:**
```sql
f: FOREIGN KEY (company) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (company) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.adviserships.fk_adviserships_role`

**Local:**
```sql
f: FOREIGN KEY (role) REFERENCES roles(roleid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (role) REFERENCES enigma.roles(roleid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.alias.alias-people`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES people(personid) ON UPDATE CASCADE ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.people(personid) ON UPDATE CASCADE ON DELETE CASCADE
```

#### `enigma.campaign.fk_campaign_recip`

**Local:**
```sql
f: FOREIGN KEY (recipient) REFERENCES people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (recipient) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.capchanges.capchanges_issue`

**Local:**
```sql
f: FOREIGN KEY (issueid) REFERENCES issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.capchanges.fk_capchanges_type`

**Local:**
```sql
f: FOREIGN KEY (capchangetype) REFERENCES capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (capchangetype) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.casetypes.casetypescourt`

**Local:**
```sql
f: FOREIGN KEY (courtid) REFERENCES courts(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (courtid) REFERENCES enigma.courts(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.cattree.fk_cattree_child`

**Local:**
```sql
f: FOREIGN KEY (childcat) REFERENCES categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (childcat) REFERENCES enigma.categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.cattree.fk_cattree_parent`

**Local:**
```sql
f: FOREIGN KEY (parentcat) REFERENCES categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (parentcat) REFERENCES enigma.categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.classifications.fk_classifications_cats`

**Local:**
```sql
f: FOREIGN KEY (category) REFERENCES categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (category) REFERENCES enigma.categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.classifications.fk_classifications_org`

**Local:**
```sql
f: FOREIGN KEY (company) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (company) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.comeets.comeetsorg`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.comex.comexorg`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.compos.composorg`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.compos.compospeople`

**Local:**
```sql
f: FOREIGN KEY (dirid) REFERENCES people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (dirid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.directorships.fk_directorships_orgs`

**Local:**
```sql
f: FOREIGN KEY (company) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (company) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.directorships.fk_directorships_persons`

**Local:**
```sql
f: FOREIGN KEY (director) REFERENCES persons(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (director) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.directorships.fk_directorships_posn`

**Local:**
```sql
f: FOREIGN KEY (positionid) REFERENCES positions(positionid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (positionid) REFERENCES enigma.positions(positionid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.documents.docs_repfilings`

**Local:**
```sql
f: FOREIGN KEY (repid) REFERENCES repfilings(id) ON UPDATE CASCADE ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (repid) REFERENCES enigma.repfilings(id) ON UPDATE CASCADE ON DELETE RESTRICT
```

#### `enigma.documents.fk_docs_doctypes`

**Local:**
```sql
f: FOREIGN KEY (doctypeid) REFERENCES doctypes(doctypeid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (doctypeid) REFERENCES enigma.doctypes(doctypeid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.documents.fk_documents_orgs`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.domchanges.domchanges_dom`

**Local:**
```sql
f: FOREIGN KEY (olddom) REFERENCES domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (olddom) REFERENCES enigma.domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.domchanges.domchanges_org`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.donations.fk_donations_campaign`

**Local:**
```sql
f: FOREIGN KEY (campaign) REFERENCES campaign(campid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (campaign) REFERENCES enigma.campaign(campid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.donations.fk_donations_currency`

**Local:**
```sql
f: FOREIGN KEY (doncurr) REFERENCES currencies(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (doncurr) REFERENCES enigma.currencies(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.donations.fk_donations_donor`

**Local:**
```sql
f: FOREIGN KEY (donor) REFERENCES persons(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (donor) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.entitlements.entitlements_issue`

**Local:**
```sql
f: FOREIGN KEY (issueid) REFERENCES issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.entitlements.fk_entitlements_event1`

**Local:**
```sql
f: FOREIGN KEY (event1) REFERENCES events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL
```

**Remote:**
```sql
f: FOREIGN KEY (event1) REFERENCES enigma.events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL
```

#### `enigma.entitlements.fk_entitlements_event2`

**Local:**
```sql
f: FOREIGN KEY (event2) REFERENCES events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL
```

**Remote:**
```sql
f: FOREIGN KEY (event2) REFERENCES enigma.events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL
```

#### `enigma.entitlements.fk_entitlements_event3`

**Local:**
```sql
f: FOREIGN KEY (event3) REFERENCES events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL
```

**Remote:**
```sql
f: FOREIGN KEY (event3) REFERENCES enigma.events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL
```

#### `enigma.entitlements.fk_entitlements_event4`

**Local:**
```sql
f: FOREIGN KEY (event4) REFERENCES events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL
```

**Remote:**
```sql
f: FOREIGN KEY (event4) REFERENCES enigma.events(eventid) ON UPDATE RESTRICT ON DELETE SET NULL
```

#### `enigma.entitlements.fk_entitlements_type1`

**Local:**
```sql
f: FOREIGN KEY (capchangetype1) REFERENCES capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (capchangetype1) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.entitlements.fk_entitlements_type2`

**Local:**
```sql
f: FOREIGN KEY (capchangetype2) REFERENCES capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (capchangetype2) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.entitlements.fk_entitlements_type3`

**Local:**
```sql
f: FOREIGN KEY (capchangetype3) REFERENCES capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (capchangetype3) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.entitlements.fk_entitlements_type4`

**Local:**
```sql
f: FOREIGN KEY (capchangetype4) REFERENCES capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (capchangetype4) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.events.capchangetype`

**Local:**
```sql
f: FOREIGN KEY (eventtype) REFERENCES capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (eventtype) REFERENCES enigma.capchangetypes(capchangetype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.events.fk_events_entit`

**Local:**
```sql
f: FOREIGN KEY (importid) REFERENCES entitlements(importid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (importid) REFERENCES enigma.entitlements(importid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.events.issue1_issue`

**Local:**
```sql
f: FOREIGN KEY (issueid) REFERENCES issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.events.issue2_issue`

**Local:**
```sql
f: FOREIGN KEY (issue2) REFERENCES issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (issue2) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.filingcodes.filingcodes_reps`

**Local:**
```sql
f: FOREIGN KEY (repid) REFERENCES repfilings(id) ON UPDATE CASCADE ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (repid) REFERENCES enigma.repfilings(id) ON UPDATE CASCADE ON DELETE CASCADE
```

#### `enigma.forexrates.fk_currpair`

**Local:**
```sql
f: FOREIGN KEY (currpair) REFERENCES currpair(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (currpair) REFERENCES enigma.currpair(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.freg.freg-dom`

**Local:**
```sql
f: FOREIGN KEY (hostdom) REFERENCES domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (hostdom) REFERENCES enigma.domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.freg.freg-org`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.govac.govac`

**Local:**
```sql
f: FOREIGN KEY (govitem) REFERENCES govitems(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (govitem) REFERENCES enigma.govitems(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.govadopt.fkadoptitems`

**Local:**
```sql
f: FOREIGN KEY (govitem) REFERENCES govitems(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (govitem) REFERENCES enigma.govitems(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.hkcrtypes.orgtype`

**Local:**
```sql
f: FOREIGN KEY (orgtype) REFERENCES orgtypes(orgtype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgtype) REFERENCES enigma.orgtypes(orgtype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.hkdistrict.district_region`

**Local:**
```sql
f: FOREIGN KEY (regionid) REFERENCES hkregion(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (regionid) REFERENCES enigma.hkregion(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.hkexdata.hkexdata_issue`

**Local:**
```sql
f: FOREIGN KEY (issueid) REFERENCES issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.issue.fk_issue_orgs`

**Local:**
```sql
f: FOREIGN KEY (issuer) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (issuer) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.issuedshares.issuedshares_issue`

**Local:**
```sql
f: FOREIGN KEY (issueid) REFERENCES issue(id1) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.judgments.judgmentscasetype`

**Local:**
```sql
f: FOREIGN KEY (casetype) REFERENCES casetypes(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (casetype) REFERENCES enigma.casetypes(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.licrec.licrecacts`

**Local:**
```sql
f: FOREIGN KEY (acttype) REFERENCES activity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (acttype) REFERENCES enigma.activity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.licrec.licrecorgs`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.licrec.licrecpeople`

**Local:**
```sql
f: FOREIGN KEY (staffid) REFERENCES people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (staffid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lirteamstaff.fklirstaff`

**Local:**
```sql
f: FOREIGN KEY (staffid) REFERENCES lirstaff(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (staffid) REFERENCES enigma.lirstaff(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lirteamstaff.fklirteams`

**Local:**
```sql
f: FOREIGN KEY (teamid) REFERENCES lirteams(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (teamid) REFERENCES enigma.lirteams(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lsadm.lsadm-lsdom`

**Local:**
```sql
f: FOREIGN KEY (lsdom) REFERENCES lsdoms(lsdom) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (lsdom) REFERENCES enigma.lsdoms(lsdom) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lsemps.lsemps-orgs`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lsjobs.lsjobs-emps`

**Local:**
```sql
f: FOREIGN KEY (empid) REFERENCES lsemps(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (empid) REFERENCES enigma.lsemps(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lsjobs.lsjobs-lsppl`

**Local:**
```sql
f: FOREIGN KEY (lsppl) REFERENCES lsppl(lsid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (lsppl) REFERENCES enigma.lsppl(lsid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lsorgs.lsorgs-orgs`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lsposts.lsposts-lsorgs`

**Local:**
```sql
f: FOREIGN KEY (lsorg) REFERENCES lsorgs(lsid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (lsorg) REFERENCES enigma.lsorgs(lsid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lsposts.lsposts-lsppl`

**Local:**
```sql
f: FOREIGN KEY (lsppl) REFERENCES lsppl(lsid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (lsppl) REFERENCES enigma.lsppl(lsid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.lsppl.lsppl-people`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.marketsforweb.fk_marketsforweb_listings`

**Local:**
```sql
f: FOREIGN KEY (stockexid) REFERENCES listings(stockexid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (stockexid) REFERENCES enigma.listings(stockexid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.namechanges.fk_namechanges_orgs`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.nationality.fk_nats_people`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES people(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.nationality.fk_nats_ukchnats`

**Local:**
```sql
f: FOREIGN KEY (ukchnat) REFERENCES ukchnats(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (ukchnat) REFERENCES enigma.ukchnats(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.oldcr.oldcr-org`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.oldcrf.oldcrf-freg`

**Local:**
```sql
f: FOREIGN KEY (fregid) REFERENCES freg(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (fregid) REFERENCES enigma.freg(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.olicrec.olicrec_acts`

**Local:**
```sql
f: FOREIGN KEY (acttype) REFERENCES activity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (acttype) REFERENCES enigma.activity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.olicrec.olicrec_org`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.organisations.fk_organisations_dom`

**Local:**
```sql
f: FOREIGN KEY (domicile) REFERENCES domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (domicile) REFERENCES enigma.domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.organisations.fk_organisations_persons`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.organisations.fk_orgs_dismode`

**Local:**
```sql
f: FOREIGN KEY (dismode) REFERENCES dismodes(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (dismode) REFERENCES enigma.dismodes(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.organisations.fk_orgs_orgtype`

**Local:**
```sql
f: FOREIGN KEY (orgtype) REFERENCES orgtypes(orgtype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgtype) REFERENCES enigma.orgtypes(orgtype) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.orgdata.fk_orgdata_dom`

**Local:**
```sql
f: FOREIGN KEY (territory) REFERENCES domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (territory) REFERENCES enigma.domiciles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.orgdata.fk_orgdata_orgs`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.ownerprof.fkorg`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.ownerstks.ownerstksorgs`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.pay.paycurr`

**Local:**
```sql
f: FOREIGN KEY (currid) REFERENCES currencies(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (currid) REFERENCES enigma.currencies(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.pay.payorg`

**Local:**
```sql
f: FOREIGN KEY (orgid) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (orgid) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.pay.payppl`

**Local:**
```sql
f: FOREIGN KEY (pplid) REFERENCES people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (pplid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.pay.payuser`

**Local:**
```sql
f: FOREIGN KEY (userid) REFERENCES users(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (userid) REFERENCES enigma.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.payerrors.payerrtype`

**Local:**
```sql
f: FOREIGN KEY (errid) REFERENCES payerrtype(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (errid) REFERENCES enigma.payerrtype(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.paylineerrors.errtype`

**Local:**
```sql
f: FOREIGN KEY (errid) REFERENCES paylineerrtype(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (errid) REFERENCES enigma.paylineerrtype(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.paylineerrors.pay`

**Local:**
```sql
f: FOREIGN KEY (payid) REFERENCES pay(id) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (payid) REFERENCES enigma.pay(id) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.payreview.dociddocs`

**Local:**
```sql
f: FOREIGN KEY (docid) REFERENCES documents(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (docid) REFERENCES enigma.documents(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.payreview.useridusers`

**Local:**
```sql
f: FOREIGN KEY (userid) REFERENCES users(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (userid) REFERENCES enigma.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.people.fk_people_persons`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.people.fk_people_titles`

**Local:**
```sql
f: FOREIGN KEY (titleid) REFERENCES titles(titleid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (titleid) REFERENCES enigma.titles(titleid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.personstories.fk_personstories_1`

**Local:**
```sql
f: FOREIGN KEY (storyid) REFERENCES stories(storyid) ON UPDATE CASCADE ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (storyid) REFERENCES enigma.stories(storyid) ON UPDATE CASCADE ON DELETE CASCADE
```

#### `enigma.personstories.fk_personstories_persons`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.positions.fk_positions_rank`

**Local:**
```sql
f: FOREIGN KEY (rank) REFERENCES rank(rankid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (rank) REFERENCES enigma.rank(rankid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.positions.fk_positions_status`

**Local:**
```sql
f: FOREIGN KEY (status) REFERENCES status(statusid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (status) REFERENCES enigma.status(statusid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.prhblock.prhblock_estate`

**Local:**
```sql
f: FOREIGN KEY (estateid) REFERENCES prhestate(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (estateid) REFERENCES enigma.prhestate(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.prhestate.estate_district`

**Local:**
```sql
f: FOREIGN KEY (district) REFERENCES hkdistrict(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (district) REFERENCES enigma.hkdistrict(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.prhflat.blockid_prhblock`

**Local:**
```sql
f: FOREIGN KEY (blockid) REFERENCES prhblock(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (blockid) REFERENCES enigma.prhblock(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.prisoners.prisoners_jail`

**Local:**
```sql
f: FOREIGN KEY (jail) REFERENCES jails(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (jail) REFERENCES enigma.jails(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.relatives.fk_relatives_rel1`

**Local:**
```sql
f: FOREIGN KEY (rel1) REFERENCES people(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (rel1) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.relatives.fk_relatives_rel2`

**Local:**
```sql
f: FOREIGN KEY (rel2) REFERENCES people(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (rel2) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.relatives.fk_relatives_relid`

**Local:**
```sql
f: FOREIGN KEY (relid) REFERENCES relationships(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (relid) REFERENCES enigma.relationships(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.reorg.fk_fromorg`

**Local:**
```sql
f: FOREIGN KEY (fromorg) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (fromorg) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.reorg.fk_toorg`

**Local:**
```sql
f: FOREIGN KEY (toorg) REFERENCES organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (toorg) REFERENCES enigma.organisations(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.sdi.sdi_currency`

**Local:**
```sql
f: FOREIGN KEY (curr) REFERENCES currencies(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (curr) REFERENCES enigma.currencies(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.sdi.sdi_issue`

**Local:**
```sql
f: FOREIGN KEY (issueid) REFERENCES issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.sdi.sdi_persons`

**Local:**
```sql
f: FOREIGN KEY (dir) REFERENCES persons(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (dir) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.sdicap.sdicap_capacity`

**Local:**
```sql
f: FOREIGN KEY (capid) REFERENCES capacity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (capid) REFERENCES enigma.capacity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.sdicap.sdicap_sdi`

**Local:**
```sql
f: FOREIGN KEY (sdiid) REFERENCES sdi(id) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (sdiid) REFERENCES enigma.sdi(id) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.sdievent.capafter_cap`

**Local:**
```sql
f: FOREIGN KEY (capafter) REFERENCES capacity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (capafter) REFERENCES enigma.capacity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.sdievent.capbefore_cap`

**Local:**
```sql
f: FOREIGN KEY (capbefore) REFERENCES capacity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (capbefore) REFERENCES enigma.capacity(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.sdievent.reason`

**Local:**
```sql
f: FOREIGN KEY (reason) REFERENCES sdireason(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (reason) REFERENCES enigma.sdireason(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.sdievent.sdievent_sdi`

**Local:**
```sql
f: FOREIGN KEY (sdiid) REFERENCES sdi(id) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (sdiid) REFERENCES enigma.sdi(id) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.sholdings.sholders_holder`

**Local:**
```sql
f: FOREIGN KEY (holderid) REFERENCES persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (holderid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.sholdings.sholders_issue`

**Local:**
```sql
f: FOREIGN KEY (issueid) REFERENCES issue(id1) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.stocklistings.fk_stocklistings_dlreason`

**Local:**
```sql
f: FOREIGN KEY (reasonid) REFERENCES dlreasons(reasonid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (reasonid) REFERENCES enigma.dlreasons(reasonid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.stocklistings.fk_stocklistings_listing`

**Local:**
```sql
f: FOREIGN KEY (stockexid) REFERENCES listings(stockexid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (stockexid) REFERENCES enigma.listings(stockexid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.stocklistings.stocklistings_issue`

**Local:**
```sql
f: FOREIGN KEY (issueid) REFERENCES issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (issueid) REFERENCES enigma.issue(id1) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.stories.fk_stories_source`

**Local:**
```sql
f: FOREIGN KEY (sourceid) REFERENCES sources(sourceid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (sourceid) REFERENCES enigma.sources(sourceid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.storytags.fk_storytags_cats`

**Local:**
```sql
f: FOREIGN KEY (catid) REFERENCES categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (catid) REFERENCES enigma.categories(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.storytags.fk_storytags_stories`

**Local:**
```sql
f: FOREIGN KEY (storyid) REFERENCES stories(storyid) ON UPDATE CASCADE ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (storyid) REFERENCES enigma.stories(storyid) ON UPDATE CASCADE ON DELETE CASCADE
```

#### `enigma.ukppl.ukppl-people`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES people(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.people(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.web.fk_web_persons`

**Local:**
```sql
f: FOREIGN KEY (personid) REFERENCES persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

**Remote:**
```sql
f: FOREIGN KEY (personid) REFERENCES enigma.persons(personid) ON UPDATE RESTRICT ON DELETE CASCADE
```

#### `enigma.web.web_sources`

**Local:**
```sql
f: FOREIGN KEY (source) REFERENCES sources(sourceid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (source) REFERENCES enigma.sources(sourceid) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.wsprivs.privs_roles`

**Local:**
```sql
f: FOREIGN KEY (roleid) REFERENCES wsroles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (roleid) REFERENCES enigma.wsroles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.wsprivs.privs_users`

**Local:**
```sql
f: FOREIGN KEY (userid) REFERENCES users(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (userid) REFERENCES enigma.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

#### `enigma.wsroletabs.roletabs_roles`

**Local:**
```sql
f: FOREIGN KEY (roleid) REFERENCES wsroles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

**Remote:**
```sql
f: FOREIGN KEY (roleid) REFERENCES enigma.wsroles(id) ON UPDATE RESTRICT ON DELETE RESTRICT
```

### Identical: 201

---

## Sequences

### Identical: 66

---

