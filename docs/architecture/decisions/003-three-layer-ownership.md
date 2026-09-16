# ADR 003 — Three repos, one seam: what lives where

Date: 2026-09-16 · Status: accepted · Extends ADR 002

## Context

After the 2026-09-11 outage (ADR 002) the question "where does the machinery
live?" came up a dozen more times in one planning pass: the deploy heartbeat,
the uptime probe, the backup timer, the Cloudflare rules that stopped the flood,
the Postgres tuning, the host's swap and journald caps, the error tracker, the
CI gate. Answering it ad hoc each time produced the drift ADR 002 describes.
There are three repositories in play and each has a different audience:

- **webbsite** (this repo): public, CC-BY, meant to be mirrored. Audience: anyone.
- **site-deploy**: public, generic push-to-deploy + host toolkit for any
  uv/gunicorn site on a droplet. Audience: anyone running such a site; today
  that is this box and the renavon fleet's descendants.
- **renavon-monorepo**: private. Owns the monitoring instance, the alert
  routing and on-call triage, the Sentry organisation, the R2 buckets, the
  data pipelines that feed this site. Audience: its operators.

## Decision

**One placement rule.** For any piece of operational machinery:

> If a second uv/gunicorn site on a droplet would want it, it goes in
> **site-deploy**. If it has to know the word "webbsite" or "Postgres", it goes
> in **webbsite**. If it has to know a ping URL, a DSN, a token, or which box
> probes whom, it goes in **renavon** or in `/etc` on the box — never in a
> public repo.

Concretely:

| Layer | Owns | Examples |
|---|---|---|
| renavon (private) | identity and routing | hc.gfrm.in checks and the `dataguru` sweep, the external probe's vantage (renavon-monorepo#1612), the Sentry org, the R2 buckets and their tokens, alert→issue triage |
| site-deploy (public, generic) | the deploy and the host | the poller and its heartbeat, the self-probe timer, host convergence (swap, journald, needrestart, Cloudflare ranges), the backup timer, the Cloudflare reconciler, the `deploy_ref` gate |
| webbsite (public, app) | the app and its declarations | code, units, Caddyfile, `cloudflare.json`, `postgresql/conf.d`, `required-env.txt`, `checks.txt`, `freshness.toml`, the invariants job, tests and CI |
| the box (`/etc/webbsite/*`) | values | ping URLs, DSN, tokens: opaque capabilities in root-only files whose **names** the public repo declares |

The seam between the layers is the one ADR 001 and ADR 002 already use: the
public side names an environment variable, the private side holds its value,
and nothing else crosses. site-deploy reads webbsite's declarations
(`deploy/site.toml` knobs, app-owned scripts like `converge.sh` and
`backup-producer.sh`) and never the reverse.

**Promote, don't call.** Where renavon has a generic mechanism this site
wants — the Cloudflare reconciler, the env manifest, the backup shape, the
green-ref deploy gate — the code is *promoted* into site-deploy, scrubbed of
renavon names, rather than called across the boundary. This is how
site-deploy came to exist in the first place (its host layer was renavon's
`deploy/host/`), and it is the only shape that keeps webbsite runnable by a
mirrorer: a public repo that depends on private code is not public.

**A shared zone is declared by host, not by phase.** `webbsite.renavon.com`
sits on a Cloudflare zone shared with other renavon hosts. Renavon's
reconciler treats a declared rule list as the whole phase; applied from this
repo it would delete the other hosts' rules. So `deploy/cloudflare.json`
carries `rule_scope.host` and the reconciler (site-deploy) owns only the rules
whose expression mentions that host, reports a rule that also mentions another
host, and never touches the zone's SSL mode or DNS. The one rule that spans
two hosts (the Free plan's single rate limit) is renavon's until the plan
allows it to be split.

## Consequences

- **Merge is root, on two repos now.** `converge.sh` runs as root from this
  repo's checkout on every deploy tick, and site-deploy self-pulls onto every
  box it runs. Both are gated behind a CI-advanced `ci-green` ref so an
  untested commit never serves. The uglier half — the checkouts are owned by
  the service user, so a remote-code-execution in the app is a path to root
  via the next tick — is site-deploy's to close (root-owned toolkit checkout;
  a working tree must match its fetched commit before root runs anything from
  it) and is recorded here so it is not forgotten.
- **Three places to look, and a fourth that must never be one.** An operator
  debugging this site reads webbsite, then site-deploy, then renavon's
  monitoring docs. The box's `/etc/webbsite/*` files are not a place where
  configuration *lives*, only where values are *placed*; `deploy/required-env.txt`
  plus `env-check.sh` keep that honest in both directions, and
  `docs/operations/non-derivable-state.md` lists what would have to be
  re-created by hand.
- **The plan's own record is the ADRs.** The 2026-09-16 hardening plan that
  produced this split is not committed (it names the box); ADRs 002 and 003,
  `deploy/README.md` and `deploy/checks.txt` are its durable form.
