# Create Your First Bot

Step-by-step guide to deploying your first Arbital trading bot.

## Before You Begin

Ensure you have:
- [ ] Connected your wallet
- [ ] Added exchange API credentials
- [ ] Sufficient balance on the exchange

## Creating a Bot

### 1. Select Exchange & Market

From the dashboard, click **Create Bot** and choose:

- **Exchange**: Where the bot will trade
- **Market**: The trading pair (e.g., BTC-PERP, ETH-PERP)

### 2. Configure Strategy

**Basic Settings:**

| Parameter | Description | Recommended |
|-----------|-------------|-------------|
| Spread | Distance from mid-price | 0.05% - 0.2% |
| Order Size | Size per order | 1-5% of balance |
| Layers | Number of order levels | 3-5 |

**Advanced Settings:**

| Parameter | Description | Recommended |
|-----------|-------------|-------------|
| Rebalance Threshold | When to adjust delta | 5-10% |
| Max Position | Position size limit | Based on risk |
| Cooldown | Time between adjustments | 30-60 seconds |

### 3. Review & Deploy

1. Review your configuration summary
2. Check estimated costs (gas, fees)
3. Click **Deploy Bot**
4. Confirm in your wallet (if required)

## Bot States

| State | Meaning |
|-------|---------|
| Starting | Bot is initializing |
| Running | Actively trading |
| Paused | Temporarily stopped |
| Stopped | Fully stopped |
| Error | Needs attention |

## Managing Your Bot

- **Pause**: Temporarily halt trading (positions remain)
- **Stop**: Close all positions and stop
- **Edit**: Modify parameters (requires pause)
- **Delete**: Remove bot permanently
