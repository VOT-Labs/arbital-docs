# Risk Management

Protect your capital with proper risk controls.

## Understanding Risks

### Market Risk
Price moves against your position before rebalancing.

**Mitigation:**
- Tighter rebalance thresholds
- Smaller position sizes
- Faster cooldown periods

### Liquidity Risk
Unable to exit positions at expected prices.

**Mitigation:**
- Trade liquid markets
- Avoid oversized positions
- Monitor order book depth

### Exchange Risk
Exchange downtime, bugs, or security issues.

**Mitigation:**
- Diversify across exchanges
- Don't over-allocate to one platform
- Monitor exchange status

### Smart Contract Risk
Vulnerabilities in exchange contracts.

**Mitigation:**
- Use established, audited exchanges
- Start with smaller amounts
- Stay informed about security updates

## Setting Up Alerts

### Position Alerts

Configure notifications for:
- Position size exceeds threshold
- Delta deviation beyond limit
- Unrealized P&L drops below threshold

### System Alerts

Get notified when:
- Bot stops unexpectedly
- API connection fails
- Order execution fails repeatedly

### Setting Alerts

1. Go to **Settings → Notifications**
2. Enable desired alert types
3. Configure thresholds
4. Add notification channels (Discord, Telegram, Email)

## Position Limits

### Per-Bot Limits

| Setting | Purpose |
|---------|---------|
| Max Position | Cap total exposure |
| Max Order Size | Limit single order impact |
| Daily Loss Limit | Auto-pause on losses |

### Account-Wide Limits

| Setting | Purpose |
|---------|---------|
| Total Exposure | Across all bots |
| Exchange Allocation | Max per exchange |
| Drawdown Limit | Account-level stop |

## Emergency Procedures

### Pause All Bots

One-click emergency stop:
1. Dashboard → **Emergency Stop**
2. All bots pause immediately
3. Positions remain open

### Close All Positions

Nuclear option:
1. **Emergency Stop** first
2. Click **Close All Positions**
3. Market orders close everything
4. Review slippage after

{% hint style="danger" %}
Closing all positions uses market orders and may incur significant slippage in volatile markets.
{% endhint %}

## Best Practices

1. **Start small** — Test with minimal capital first
2. **Diversify** — Don't put everything in one bot/exchange
3. **Monitor actively** — Especially in the first few days
4. **Set alerts** — Don't rely on manual checking
5. **Have a plan** — Know what you'll do in various scenarios

---

*Last updated: 2026-02-02*
