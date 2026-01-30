# Bot Configuration

Fine-tune your Arbital bot for optimal performance.

## Core Parameters

### Spread

The distance from mid-price where orders are placed.

| Spread | Risk | Reward | Best For |
|--------|------|--------|----------|
| 0.02-0.05% | Higher | Lower | High volume, tight markets |
| 0.05-0.1% | Medium | Medium | Most users |
| 0.1-0.2% | Lower | Higher | Volatile markets |

### Order Size

How much capital per order level.

**Rule of thumb:** 1-5% of total balance per order

- Too small: Inefficient, many orders needed
- Too large: Concentration risk, harder to fill

### Layers

Number of order levels on each side.

| Layers | Use Case |
|--------|----------|
| 1-2 | Simple, concentrated |
| 3-5 | Balanced (recommended) |
| 5-10 | Wide coverage, volatile markets |

## Advanced Parameters

### Rebalance Threshold

When delta deviation triggers rebalancing.

- **5%**: Frequent rebalancing, tighter control
- **10%**: Balanced approach
- **20%**: Less frequent, lower costs

### Max Position

Hard limit on position size.

Set based on:
- Available collateral
- Risk tolerance
- Market liquidity

### Cooldown Period

Minimum time between bot actions.

- **10-30s**: Aggressive, higher gas costs
- **30-60s**: Balanced
- **60s+**: Conservative, lower costs

## Configuration Examples

### Conservative
```
Spread: 0.15%
Order Size: 2% of balance
Layers: 3
Rebalance: 15%
Cooldown: 60s
```

### Balanced
```
Spread: 0.08%
Order Size: 3% of balance
Layers: 4
Rebalance: 10%
Cooldown: 30s
```

### Aggressive
```
Spread: 0.04%
Order Size: 5% of balance
Layers: 5
Rebalance: 5%
Cooldown: 15s
```

## Editing Configuration

1. **Pause** the bot first
2. Click **Edit Configuration**
3. Modify parameters
4. **Review changes**
5. **Resume** the bot
