# How It Works

Arbital automates delta-neutral market-making strategies across perpetual DEXs.

## The Core Loop

1. **Deposit Collateral** — Fund your account on supported exchanges
2. **Configure Bot** — Set parameters (spread, size, rebalance thresholds)
3. **Bot Executes** — Continuously places orders on both sides of the book
4. **Earn Rewards** — Collect trading fees, points, and incentives
5. **Stay Neutral** — Auto-hedge to maintain market-neutral exposure

## Delta-Neutral Strategy

Delta-neutral means your portfolio has zero directional exposure to price movements:

- **Long 1 BTC spot** + **Short 1 BTC perp** = Net zero BTC exposure
- You profit from funding rates, spreads, and exchange incentives
- Price can go up or down — your P&L stays stable

## Architecture Overview

```
User Wallet → Arbital Dashboard → Trading Bot → Exchange APIs
                    ↓
            Real-time Monitoring
            Position Tracking
            Risk Alerts
```

## Non-Custodial Model

- Your keys, your funds
- Arbital never holds your assets
- API keys are encrypted and used only for trading
- Revoke access anytime
