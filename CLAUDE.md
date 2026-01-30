# CLAUDE.md - Arbital Ecosystem

**Organization:** https://github.com/VOT-Labs
**Website:** https://arbital.xyz
**Purpose:** Ecosystem-wide context for AI assistants working across all Arbital repositories

> **Naming Clarification:** **Arbital** is the product/platform name. **VOT-Labs** is the GitHub organization. They are the same entity — use interchangeably. All repos live under `VOT-Labs/*`.

---

## ECOSYSTEM OVERVIEW

Arbital is an **automated delta-neutral market-making platform** for perpetual DEXs. Users create and manage autonomous trading bots that farm points/rewards across multiple exchanges while maintaining market-neutral exposure.

### Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                        ARBITAL PLATFORM                         │
├─────────────────────────────────────────────────────────────────┤
│   ┌──────────────────┐      ┌──────────────────┐               │
│   │  Frontend (v2)   │ ──── │    Backend       │               │
│   │  Next.js 15      │      │    NestJS 11     │               │
│   │  Vercel          │      │    DigitalOcean  │               │
│   └──────────────────┘      └────────┬─────────┘               │
│                                      │                          │
│            ┌─────────────────────────┼─────────────────────┐    │
│            ▼                         ▼                     ▼    │
│   ┌────────────────┐    ┌────────────────┐    ┌──────────────┐ │
│   │  Dex-Bot-V2    │    │   ClickHouse   │    │    Redis     │ │
│   │  Rust Engine   │    │   Analytics    │    │    Cache     │ │
│   │  K8s Pods      │    └────────────────┘    └──────────────┘ │
│   └────────────────┘                                            │
└─────────────────────────────────────────────────────────────────┘
```

### Supported Exchanges
- Lighter (Solana perps)
- Pacifica
- Extended (Hyperliquid)
- Aster, Hibachi, Based App

### Team
| Name | Role |
|------|------|
| Valentino | CTO & Founder (Tech) |
| Steven | Founder (BD) |
| Karon | Founder (BD) |
| William | Engineer |
| Hugo Philbert | Jr. Engineer |

**Community:** Discord (building), Telegram (beta support - Karon & Steven)

---

## REPOSITORY INDEX

### Core Platform

| Repo | Purpose | Stack | Status |
|------|---------|-------|--------|
| `Dex-Bot-V2` | Trading engine | Rust, Tokio, WebSocket | Active |
| `arbital-frontend-v2` | User dashboard | Next.js 15, React 18, Tailwind | Active |
| `arbital-backend` | API & orchestration | NestJS 11, ClickHouse, Redis | Active |
| `Arbital-Agent` | Virtuals Protocol integration | Bun, Prisma, ACP SDK | Active |

### Supporting Projects

| Repo | Purpose | Stack | Status |
|------|---------|-------|--------|
| `Dex-Bot` | Legacy trading bot | Python | Superseded |
| `arbital-app-frontend` | Older frontend | Next.js | Superseded |
| `Perps-MM` | Pure perps market making | Python | Active |
| `Funding-Rate-Bot` | Funding rate arbitrage | Rust | Active |
| `Exchange-Engine` | Shared exchange abstractions | Rust | Shared lib |
| `v0-arbital-landing-page` | Marketing site | Next.js | Active |
| `Dex-Bot-Dashboard` | Admin dashboard | Next.js | Active |
| `arbital-docs` | Platform documentation | GitBook (Markdown) | Active |

---

## CROSS-REPO STANDARDS

### Tech Stack Conventions
- **Frontend:** Next.js + React + Tailwind + Radix UI
- **Backend:** NestJS (Node) or Rust (Tokio)
- **Database:** ClickHouse (analytics), PostgreSQL (relational), Redis (cache)
- **Web3:** Wagmi + Viem (EVM), Solana wallet adapters
- **Deployment:** Vercel (frontend), Docker + K8s (backend/bots)

### Code Style
- 2-space indentation
- TypeScript strict mode
- Prettier + ESLint
- Conventional commits

### Git Workflow

**Per-Repo Branch Structure:**

| Repo | Production | Staging | Feature Branches | Notes |
|------|------------|---------|------------------|-------|
| `Dex-Bot-V2` | `production` | `phase-1` | `feat/*`, `fix/*` | Non-standard naming |
| `arbital-frontend-v2` | `main` | — | `feat/*`, `fix/*`, `chore/*` | Direct to main |
| `arbital-backend` | `main` | — | `feat/*`, `f/*`, `fix/*` | Direct to main |
| `Arbital-Agent` | `main` | — | `feat/*` | Direct to main |

**Flow:**
- Feature branches → Staging (if exists) → Production
- PR-based merges (no direct commits to production/main)
- Conventional commits required

---

## CROSS-REPO COORDINATION

### Shared Dependencies
- Exchange API integrations (Lighter, Pacifica, Hyperliquid)
- Authentication flow (wallet-based, JWT)
- Bot lifecycle management (start/stop/status)

### API Contracts
- Backend exposes REST APIs consumed by frontend
- Backend orchestrates Dex-Bot-V2 via K8s
- Bot reports metrics to ClickHouse

---

## AI ASSISTANT GUIDELINES

**DO:**
- Check satellite CLAUDE.md for repo-specific context
- Understand the trading domain (delta-neutral, market-making, perps)
- Consider cross-repo impact when modifying shared interfaces
- Test WebSocket connections carefully (exchange integrations)

**DON'T:**
- Modify exchange API keys or credentials
- Change trading parameters without explicit confirmation
- Assume all repos use the same stack (Rust vs TypeScript)
- Ignore the non-custodial security model

---

**Last Updated:** 2026-01-27
