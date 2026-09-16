# ADR 002 — Telemetry and convergence across a public/private boundary

Date: 2026-09-16 · Status: accepted

## Context

This repo is public, CC-BY, and meant to be mirrored: the README invites anyone
to run their own copy. The infrastructure that operates *our* copy — the
monitoring instance, its alert routing, the on-call triage that turns an alert
into an issue — is private and shared with unrelated services. Both facts are
load-bearing and they pull in opposite directions.

On 2026-09-11 Caddy was OOM-killed on the droplet and the site served Cloudflare
521s for five days. Two causes, and neither was the scraper flood that triggered
it:

1. **Nothing watched the site from outside.** The only external signal anyone
   would have noticed was the front page, which kept answering 302 from the edge
   cache. `/health` was 521 the whole time and nobody was asking.
2. **Caddy's unit was declared nowhere**, so the fact that it carried no
   `Restart=` had never been in front of a reviewer. `deploy/` was documentation:
   the deploy did `git ff → uv sync → reload → purge` and never applied it, and
   the committed units had already drifted from the box (ADR-adjacent: #27).

Fixing either one raises the same question — where does the machinery live when
the repo is public and the infrastructure is not?

## Decision

**Split on audience, not on convenience: the public repo declares mechanism, the
private side supplies identity and routing, and the only thing that crosses is
an opaque capability URL in a root-only env file.**

| Concern | Lives in | Why |
|---|---|---|
| Uptime probing, check definitions, alert routing, on-call triage | private fleet (`hc.gfrm.in`) | It already exists and is better than anything this repo would grow. Checks tagged into the fleet's sweep inherit its paused-check detection and its alert→issue path for free. |
| Box convergence (`deploy/converge.sh`, site-deploy) | this repo + a generic, separate toolkit | A mirrorer can run both. Converging from a private repo would make this repo unusable to anyone but us. |
| Units, Caddy config, app code, `/health` | this repo | Mirrorable, reviewable, no private knowledge required. |
| Check UUIDs, API tokens, origin identity | `/etc/webbsite/*` + the operator keyring | Ping URLs are capabilities: anyone holding one can flip the check. They never enter a public repo. |

This is the same seam the data path already uses, and deliberately so. ADR 001
put an Object-Read-only R2 token on this box and had renavon push nothing;
telemetry is the mirror image, with opaque ping URLs going out. In both
directions the public repo names an environment variable and the private side
holds its value, so **the integration has no shared code and no shared
credentials — only a bucket and a URL.**

Two consequences worth stating plainly:

- **A mirrorer loses nothing.** `HC_URL` and the probe are unset in a fresh
  clone, and every ping path is a documented no-op when unset. The site runs;
  only our alerting is missing, which is correct, because it is ours.
- **Merge access to this repo is root on our box.** Convergence installs
  repo-declared systemd units, and a unit's `ExecStart` runs as root. The repo
  is public to *read*; merge is not, and that is the boundary. It is why the
  sudoers grant names exactly one path and why `converge = true` is opt-in.

### Health endpoints are split the same way

`/health` is liveness — cheap, no I/O, "did this process boot and start
routing". `/health?deep=1` is readiness: one Postgres round-trip plus the
refresh watermark, returning 503 stale and 500 unreachable. The deploy gate
uses the shallow one (a stale upstream feed must not wedge the deploy carrying
the fix); an external uptime probe uses the deep one (a shallow 200 with the
database dead is exactly the green-while-broken signal this ADR exists to end).

## Alternatives rejected

- **Probe from the droplet itself.** Self-contained and needs nobody's
  permission, and the dead-man property still catches box death. Rejected
  because the vantage point that matters is a visitor's, and because a second
  implementation of a probe the fleet already had is a second thing to keep
  right.
- **Hand-place a `probe-webbsite.env` on a fleet box.** The fast option: that
  inventory is box-local and un-versioned, so it needed no change anywhere.
  Rejected for that exact reason — adding one more undeclared file to fix a
  problem caused by undeclared state. Filed as renavon-monorepo#1612 instead.
- **Put the fleet's converge on this box.** Would have made the droplet a
  member of the private fleet and given us convergence for free, at the cost of
  making this repo's deploy story depend on a repo nobody else can read.

## Consequences

- Until #1612 lands, the site has **no external uptime probe**. The blast radius
  is bounded by the restart policy and memory cap, which turn the 2026-09-11
  failure into a five-second blip rather than five days — but "bounded" is not
  "observed", and a failure outside that class would still be silent.
- The fleet's checks, and therefore our alerts, depend on infrastructure this
  repo cannot see or test. A mirrorer cannot reproduce our monitoring, only our
  site. That is the intended trade and the reason the boundary is written down.
