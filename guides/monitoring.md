# Monitoring & Analytics

Track your bot performance and make data-driven decisions.

## Dashboard Overview

The main dashboard shows aggregate statistics:

| Metric | Description |
|--------|-------------|
| **Total Volume** | All-time trading volume across all bots |
| **Active Bots** | Number of currently running bots |
| **Total Fees & PnL** | Cumulative profit/loss and fees paid |

### Bot Filtering

Filter your bots by status:
- **All** — Show all bots
- **Active** — Currently running bots
- **Inactive** — Stopped or idle bots
- **Completed** — Finished bots

## Bot Detail View

Click any bot to see detailed analytics.

### Stats Cards

At the top, you'll see key metrics:

| Card | What It Shows | Color Coding |
|------|---------------|--------------|
| **Volume** | Total trading volume | — |
| **Fees/PnL** | Net profit or loss | Green = profit, Red = loss |
| **Progress** | Volume % of target | Progress bar |
| **Budget Used** | Fees % of budget | Progress bar |

### Balance Chart

Shows your account balance over time.

**How to read it:**
- **Upward trend** — Account growing (good)
- **Downward trend** — Account shrinking (investigate)
- **Flat line** — No change (bot may be idle)

**Timeframes:**
- 5m, 15m, 1h, 4h, 1d, 1w

Select shorter timeframes for recent activity, longer for trends.

### Volume Chart

Shows trading activity over time.

**How to read it:**
- **Tall bars** — High trading activity
- **Short bars** — Low activity
- **No bars** — Bot idle or no fills

**Interpreting patterns:**
- Consistent volume = bot running smoothly
- Sudden drops = possible issues
- Spikes = high market activity

## Events Table

Real-time log of bot activity.

### Event Types

| Event | Icon | Meaning |
|-------|------|---------|
| **order_placed** | <i class="fa-paper-plane">:paper-plane:</i> | New order sent to exchange |
| **order_filled** | <i class="fa-circle-check">:circle-check:</i> | Order executed (trade complete) |
| **order_canceled** | <i class="fa-circle-xmark">:circle-xmark:</i> | Order removed from book |
| **error** | <i class="fa-circle-exclamation">:circle-exclamation:</i> | Something went wrong |
| **warning** | <i class="fa-triangle-exclamation">:triangle-exclamation:</i> | Non-critical issue |

### Event Details

Each event shows:
- **Timestamp** — When it happened
- **Type** — What kind of event
- **Side** — Buy (green) or Sell (red)
- **Details** — Price, size, or error message

### Using Events for Troubleshooting

**If you see many `error` events:**
1. Check the error message
2. Verify exchange connectivity
3. Check your balance
4. Review bot configuration

**If you see only `order_placed` but no `order_filled`:**
- Orders aren't filling
- Try more aggressive mode
- Check if spread is too wide

**If you see `order_canceled` frequently:**
- Normal behavior — bot refreshes orders
- High cancellation = active rebalancing

## Trades Table

History of executed trades.

### Trade Columns

| Column | Description |
|--------|-------------|
| **Order ID** | Unique trade identifier |
| **Time** | When trade executed |
| **Asset** | Trading pair (ETH, BTC, etc.) |
| **Side** | Buy or Sell |
| **Size** | Trade amount |
| **Entry Price** | Price you entered at |
| **Exit Price** | Price you exited at (if closed) |
| **PnL** | Profit/loss on this trade |
| **Status** | Open or Closed |

### Reading Trade History

**Profitable trades:** PnL shows positive (green)
**Losing trades:** PnL shows negative (red)
**Open positions:** No exit price yet, PnL is unrealized

### Trade Statistics

Aggregated stats from all trades:
- Total buy volume
- Total sell volume
- Net PnL
- Number of round trips

## Positions Table

Current open positions.

### Position Columns

| Column | Description |
|--------|-------------|
| **Symbol** | Market (ETH-PERP, etc.) |
| **Side** | Long or Short |
| **Size** | Position size |
| **Entry Price** | Average entry |
| **Mark Price** | Current market price |
| **Liq. Price** | Liquidation price |
| **Unrealized PnL** | Floating profit/loss |

### Understanding Liquidation Price

The **liquidation price** is where your position would be forcefully closed.

**For long positions:** Liq price is below entry
**For short positions:** Liq price is above entry

**Safety margin:** Keep price far from liquidation. If mark price approaches liq price, reduce position or add margin.

## Interpreting Performance

### Healthy Bot Signs

- <i class="fa-circle-check">:circle-check:</i> Steady balance growth
- <i class="fa-circle-check">:circle-check:</i> Regular order fills
- <i class="fa-circle-check">:circle-check:</i> Balanced buy/sell volume
- <i class="fa-circle-check">:circle-check:</i> Low error rate
- <i class="fa-circle-check">:circle-check:</i> Inventory staying near neutral

### Warning Signs

- <i class="fa-triangle-exclamation">:triangle-exclamation:</i> Balance declining
- <i class="fa-triangle-exclamation">:triangle-exclamation:</i> Many errors in events
- <i class="fa-triangle-exclamation">:triangle-exclamation:</i> No fills for extended period
- <i class="fa-triangle-exclamation">:triangle-exclamation:</i> Inventory building up (high delta)
- <i class="fa-triangle-exclamation">:triangle-exclamation:</i> Approaching liquidation price

### What to Do If Performance Is Poor

1. **Check events** for errors
2. **Review inventory** — is it too skewed?
3. **Adjust execution mode** — try more aggressive
4. **Check market conditions** — low liquidity?
5. **Review configuration** — parameters appropriate?

## Refresh & Polling

- Dashboard auto-refreshes every **30 seconds**
- Click the refresh button for immediate update
- Events and trades paginate (10 items per page)

## API Endpoints

Access monitoring data programmatically:

```
GET /api/v1/bots/{instanceId}/report/balance
GET /api/v1/bots/{instanceId}/report/volume
GET /api/v1/bots/{instanceId}/positions
```

See [API Reference](../reference/api.md) for details.

---

*Last updated: 2026-02-02*
