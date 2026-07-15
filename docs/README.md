# Webb-site documentation

Reference notes for the **live** system. Architecture and the data-revival plan live in the
top-level [`CLAUDE.md`](../CLAUDE.md); hosting and operations live in
[`deploy/README.md`](../deploy/README.md).

## Data model
- [database/enigma-schema.md](database/enigma-schema.md) — core schema: companies, persons,
  securities, events, financial reports (35 years, 1990–2025)
- [database/ccass-schema.md](database/ccass-schema.md) — CCASS holdings and beneficial-ownership
  tracking

## Historical system

The retired tiers (VB.NET scrapers, MySQL setup, Classic ASP web interface, the Access editing
frontend) are **not** documented here anymore. They are preserved in David Webb's canonical
**Google Drive release** (CC-BY 4.0) and in this repo's git history. Reviving data collection is
tracked in the [renavon-monorepo](https://github.com/renavondata/renavon-monorepo) roadmap.
