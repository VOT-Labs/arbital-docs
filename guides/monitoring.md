# Monitoring & Analytics

Track your bot performance and make data-driven decisions.

## Dashboard Overview

The main dashboard shows:

- **Total P&L** — Cumulative profit/loss
- **Active Bots** — Running bot count
- **Total Volume** — Trading volume generated
- **Current Positions** — Open positions across all bots

## Bot-Level Metrics

### Performance Tab

| Metric | Description |
|--------|-------------|
| P&L | Profit and loss (realized + unrealized) |
| ROI | Return on investment percentage |
| Volume | Total trading volume |
| Trades | Number of executed trades |
| Win Rate | Percentage of profitable trades |

### Position Tab

| Metric | Description |
|--------|-------------|
| Size | Current position size |
| Entry Price | Average entry price |
| Mark Price | Current market price |
| Unrealized P&L | Floating profit/loss |
| Liquidation Price | Price at which position liquidates |

### Orders Tab

- Open orders (pending)
- Order history
- Fill rates
- Cancellation reasons

## Analytics

### Time-Based Analysis

View performance over:
- 24 hours
- 7 days
- 30 days
- All time
- Custom range

### Breakdown Views

- By exchange
- By market
- By bot
- By time period

## Charts

### P&L Chart
Track cumulative P&L over time. Look for:
- Steady growth (good)
- Large drawdowns (investigate)
- Correlation with market moves

### Position History
Visualize position changes. Monitor:
- Delta deviation patterns
- Rebalancing frequency
- Position size trends

### Funding Earned
Track funding rate income:
- Positive vs negative funding periods
- Net funding P&L
- Funding as % of total returns

## Export Data

Export your data for external analysis:

1. Go to **Analytics → Export**
2. Select date range
3. Choose format (CSV, JSON)
4. Download

## API Access

For programmatic access:

```
GET /api/v1/bots/{botId}/stats
GET /api/v1/bots/{botId}/positions
GET /api/v1/bots/{botId}/orders
```

See API documentation for full details.
