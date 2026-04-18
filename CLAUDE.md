# CLAUDE.md — Arbital Public Docs

> **Ecosystem Hub:** See [Dex-Bot-V2/CLAUDE.md](https://github.com/VOT-Labs/Dex-Bot-V2/blob/production/CLAUDE.md) for full VOT-Labs ecosystem context

**Repository:** https://github.com/VOT-Labs/arbital-docs
**Live Site:** https://arbital-1.gitbook.io/docs (auto-syncs from `main`)
**Purpose:** Public-facing product docs for Arbital users (traders)

---

## Content Guidelines

**DO:**
- Write for end users (traders), not engineers
- Keep examples concrete (specific pairs, specific strategies)
- Match terminology used in the product UI (arbital.xyz)
- Update `SUMMARY.md` when adding new pages — GitBook reads this as TOC

**DON'T:**
- Document internal architecture or unreleased features
- Reference exchange credentials, wallet addresses, or secrets
- Mention engineering-side tooling (CI, deploy scripts, infra)
- Expose information about the agentic terminal before public launch

---

## Key Files

| Path | Description |
|------|-------------|
| `SUMMARY.md` | GitBook table of contents |
| `strategies.md` | TWAP MM + Delta Neutral explanations |
| `execution-modes.md` | Aggressive / Normal / Passive |
| `fee-structure.md` | Builder fees + maker/taker |
| `supported-exchanges.md` | Live venue list |
| `bot-parameters.md` | User-facing bot configuration |
| `monitoring.md` | Dashboard + performance tracking |
| `terminology.md` | Glossary |

---

## Sync to GitBook

GitBook auto-syncs from `main` branch. Commit to `main` → site updates within minutes.

---

**Last Updated:** 2026-04-18
