# FAQ

Frequently asked questions about Arbital.

## General

### What is Arbital?

Arbital is an automated market-making platform for perpetual DEXs. Create and manage trading bots that execute TWAP or Grid strategies across multiple exchanges.

### Is Arbital custodial?

No. Arbital is fully non-custodial:
- Your funds stay on the exchange
- We use credential binding (wallet signatures), not stored API keys
- No withdrawal permissions are ever granted
- Revoke access anytime from the dashboard

### Which exchanges are supported?

Currently live:
- **Lighter** — EVM wallet, no minimum balance
- **Pacifica** — Solana wallet, $20 minimum
- **Extended (Hyperliquid)** — EVM wallet, $20 minimum

Coming soon: Aster, Hibachi, Based App

### How much capital do I need?

- **Minimum:** $20 for Pacifica/Extended, no minimum for Lighter
- **Recommended:** $500+ for meaningful returns
- **Start small:** Test with smaller amounts before scaling up

---

## Strategies

### What's the difference between TWAP and Grid?

**TWAP (Time-Weighted Average Price):**
- Spreads orders over time
- Continuous market making
- Automatic inventory management
- Best for: General market making, any market condition

**Grid:**
- Places orders at fixed price intervals
- Profits from price oscillation
- Defined profit per fill
- Best for: Ranging markets, expected price bounds

### What does bias mean?

Bias controls your directional exposure:
- **-1 (Short):** Only sell orders, profits from price drops
- **0 (Neutral):** 50/50 buy/sell, delta-neutral
- **+1 (Long):** Only buy orders, profits from price rises

Most users start with **neutral (0)** to minimize directional risk.

### Which execution mode should I use?

| Mode | Refresh | Best For |
|------|---------|----------|
| **Aggressive** | 3 seconds | Volatile markets, rapid response |
| **Normal** | 5 seconds | Most situations |
| **Passive** | 7 seconds | Stable markets, cost savings |

When in doubt, use **Aggressive** for faster response.

---

## Bot Management

### Why is my bot stuck in "pending"?

Common causes:
1. Exchange API is slow or down
2. Network congestion
3. Credential binding issue

**Solution:** Wait 2-3 minutes. If still pending, stop the bot and try starting again.

### Why did my bot fail?

Check the error message. Common causes:
- Insufficient balance on exchange
- Credential binding expired
- Position limits exceeded
- Exchange maintenance

### Can I edit a running bot?

No. You must stop the bot first, then edit, then restart.

Editable states: Idle, Stopped, Failed

### Can I run multiple bots?

Yes. You can run multiple bots on:
- Different exchanges simultaneously
- Different markets on the same exchange
- Same market with different strategies (not recommended)

---

## Inventory & Risk

### What is inventory management?

Your "inventory" is your current position exposure in USD. Inventory management automatically:
- Tracks your position size
- Skews orders to reduce exposure
- Stops adding to positions at max limits

### What happens when I hit max inventory?

The bot enters **reduce-only mode**:
- If max long: only places sell orders
- If max short: only places buy orders
- Normal trading resumes when inventory decreases

### Why is my inventory building up?

Possible causes:
- Price trending in one direction
- Skew factor too low
- Bias setting creating directional exposure

**Solutions:**
- Increase inventory skew factor
- Use more neutral bias
- Reduce max inventory limit

---

## Costs & Returns

### What are the fees?

| Exchange | Exchange Fee | Arbital Fee | Total |
|----------|--------------|-------------|-------|
| Lighter | 0-0.01% | 0.02% | 0.02-0.03% |
| Pacifica | 0.015-0.025% | 0.02% | 0.035-0.045% |
| Extended | 0.01-0.02% | 0.02% | 0.03-0.04% |

### What returns can I expect?

Returns depend on:
- Market volatility
- Strategy configuration
- Exchange incentive programs
- Your execution mode

**Important:** Past performance doesn't guarantee future results. Market making has risks.

### Can I lose money?

Yes. Risks include:
- Adverse price movements (especially with biased strategies)
- Inventory accumulation during trends
- Exchange downtime or failures
- Configuration errors

Start small and understand your strategy before scaling.

---

## Security

### Are my credentials safe?

Yes. Arbital uses credential binding:
- You sign a message with your wallet
- Your private keys never leave your wallet
- No API secrets are stored
- Credentials can be revoked anytime

### Can Arbital withdraw my funds?

No. Credential binding only grants trading permissions. Withdrawals are never possible through Arbital.

### What if my wallet is compromised?

1. Unbind credentials on Arbital immediately
2. Revoke API sessions on the exchange
3. Secure your wallet
4. Check for unauthorized trades

---

## Technical

### Why aren't my orders filling?

Possible causes:
- Market too illiquid
- Spread too wide compared to market
- Price moving faster than your refresh rate

**Solutions:**
- Try a more liquid market (BTC, ETH)
- Use more aggressive execution mode
- Reduce order size

### How do I see my trade history?

From the dashboard:
1. Click on your bot
2. Go to **Reports** tab
3. View trades, volume, and PnL

### Can I use Arbital programmatically?

Yes. See the [API Reference](reference/api.md) for endpoints to create, manage, and monitor bots.

---

## Support

### How do I get help?

- **Discord:** Join our community for support
- **Telegram:** Direct support from the team
- **Docs:** You're here

### How do I report a bug?

Contact us on Discord or Telegram with:
- What you were trying to do
- What you expected to happen
- What actually happened
- Screenshots if possible
- Your wallet address and bot ID

### Where can I see exchange status?

Check the exchange's official status pages:
- Lighter: lighter.xyz
- Pacifica: Official status page
- Extended/Hyperliquid: hyperliquid.xyz

---

*Last updated: 2026-02-02*
