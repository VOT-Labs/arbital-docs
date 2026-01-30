# FAQ

Frequently asked questions about Arbital.

## General

### What is Arbital?

Arbital is an automated delta-neutral market-making platform. It helps you run trading bots that farm points and rewards on perpetual DEXs while maintaining market-neutral exposure.

### Is Arbital custodial?

No. Arbital is non-custodial. Your funds stay on the exchanges you trade on. We only use API keys to place trades on your behalf.

### Which exchanges are supported?

Currently: Lighter (Solana), Pacifica, Hyperliquid, Aster, Hibachi, and Based App. More coming soon.

### How much capital do I need?

Minimum varies by exchange, but we recommend at least $1,000 for meaningful returns. You can start smaller to test.

## Bots & Trading

### How does delta-neutral work?

Your bot maintains balanced long and short positions so that price movements cancel out. You profit from funding rates, spreads, and trading incentives rather than directional bets.

### What returns can I expect?

Returns vary based on market conditions, exchange incentives, and your configuration. Historical returns are not indicative of future performance. Always understand the risks.

### Can I lose money?

Yes. Risks include:
- Slippage during rebalancing
- Exchange downtime or issues
- Extreme market conditions
- Configuration errors

### How do I stop my bot?

Click **Pause** to temporarily stop (positions remain) or **Stop** to close all positions and halt completely.

## Security

### Are my API keys safe?

API keys are encrypted at rest and in transit. We recommend using keys with trade-only permissions (no withdrawals).

### Can Arbital withdraw my funds?

No. We never request withdrawal permissions. Even if compromised, API keys cannot move funds off-exchange.

### What if an exchange gets hacked?

Exchange risk exists with any trading. Diversify across exchanges and don't allocate more than you can afford to lose to any single platform.

## Technical

### Why did my bot stop?

Common reasons:
- Insufficient balance
- API key expired or revoked
- Exchange maintenance
- Position limit reached

Check the bot's error logs for details.

### How often does the bot trade?

Depends on your configuration and market conditions. Typically several times per hour during active markets.

### Can I run multiple bots?

Yes. You can run multiple bots across different exchanges and markets simultaneously.

## Billing & Support

### Is Arbital free?

We're currently in beta. Check our website for current pricing.

### How do I get help?

- Join our Discord community
- Contact support via Telegram
- Check this documentation

### How do I report a bug?

Reach out on Discord or Telegram with:
- What you were doing
- What you expected
- What happened instead
- Screenshots if possible
