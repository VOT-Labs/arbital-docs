# Create Your First Bot

Step-by-step guide to deploying your first Arbital trading bot.

## 🎬 Video Walkthrough

Watch a complete walkthrough of creating and deploying your first bot:

{% embed url="https://www.loom.com/share/009b1e3f75d14c38bcead32d1d3363da" %}

## Before You Begin

Ensure you have:
- [ ] Connected your wallet (EVM for Extended, Solana for Pacifica)
- [ ] Sufficient balance on the exchange (minimum $20)

## Bot Creation Wizard

The creation wizard is a single-page form with multiple sections. All sections are visible at once with a sticky summary card on the right.

### 1. Strategy Selection

Choose your directional bias:

| Strategy | Bias Value | Description |
|----------|------------|-------------|
| **Short** | -1 | Bearish bias, aggressive early selling |
| **Neutral** | 0 | No directional bias, balanced buying/selling |
| **Long** | +1 | Bullish bias, aggressive early buying |

**Default:** Neutral (recommended for beginners)

### 2. Exchange & Wallet Connection

Select your exchange and connect the appropriate wallet:

| Exchange | Wallet Type | Notes |
|----------|-------------|-------|
| **Pacifica** | Solana (Phantom, etc.) | Requires referral approval + $20 minimum |
| **Extended** | EVM (MetaMask, etc.) | Credential binding + $20 minimum |

After wallet connection, your balance is automatically fetched and validated.

### 3. Exchange-Specific Requirements

Each exchange has additional setup steps:

**Pacifica (Solana):**
1. Sign message to approve Arbital referral
2. Balance validation ($20+ required)
3. Sign message to create credentials

**Extended:**
1. Sign message to create credentials
2. Balance validation ($20+ required)

### 4. Trading Asset Selection

Choose the market to trade:

**Available Assets:** BTC, ETH, SOL, DOGE, XRP, LINK, HYPE, AAVE, VIRTUAL, XPL, ASTER

All assets are available on all exchanges. Your bot name auto-generates as `{exchange}_{asset}` when both are selected.

### 5. Execution Mode

Control how aggressively your bot trades:

| Mode | Refresh Interval | Use Case |
|------|------------------|----------|
| **Aggressive** | 3 seconds | High-volatility markets, rapid position adjustment |
| **Normal** | 5 seconds | Standard operation, balanced approach |
| **Passive** | 7 seconds | Low-volatility markets, reduced costs |

**Default:** Aggressive

### 6. Budget & Volume

Configure your budget — the maximum amount (fees + PnL) you are willing to spend before the bot automatically stops.

- **Expected Budget (USD):** Max fees + PnL spend before the bot stops
  - Minimum: $0.01
  - Maximum: Your wallet balance
  - Default: 30% of wallet balance
  - **Recommended starting budget:** $500–$1,000

- **Min Expected Volume (USD):** Calculated from budget × burn rate
  - Updates automatically when budget changes

{% hint style="info" %}
**Budget ≠ capital allocation.** Budget is the maximum you're willing to spend on fees and absorb in PnL before the bot shuts down. Your actual trading capital (notional) is configured separately.
{% endhint %}

**Burn Rates by Exchange:**
| Exchange | Fee Range |
|----------|-----------|
| Pacifica | 0.015-0.025% |
| Extended | 0.01-0.02% |

### 7. Inventory Management (Optional)

Control position exposure:

**Normal Mode (Default):** Auto-manages to keep exposure balanced

**Advanced Mode:** Fine-tune for specific strategies
- **Maximum Position Size:** $100-$500 USD hard cap on directional exposure
- **Inventory Skew Factor:** 0-100% rebalancing aggressiveness
  - 0% = Lazy drift (minimal rebalancing)
  - 100% = Aggressive rebalance (frequent rebalancing)

### 8. Review & Deploy

The sticky summary card shows:
- Bot name
- Strategy (Short/Neutral/Long)
- Exchange & wallet address
- Trading asset
- Execution mode
- Expected budget & volume range

Click **Create Bot** to deploy. The bot automatically starts after creation.

## Bot States

| State | Meaning |
|-------|---------|
| **Idle** | Created but never started |
| **Pending** | Queued, connecting to exchange |
| **Running** | Actively trading |
| **Stopping** | Graceful shutdown in progress |
| **Stopped** | Manually stopped by user |
| **Completed** | Reached target or time limit |
| **Failed** | Error occurred, needs attention |

## Managing Your Bot

From the dashboard, you can:

- **Start:** Resume a stopped bot
- **Stop:** Gracefully stop trading (cancels open orders)
- **Edit:** Modify parameters (only when stopped/idle/failed)
- **Delete:** Remove bot permanently

---

*Last updated: 2026-02-03*
