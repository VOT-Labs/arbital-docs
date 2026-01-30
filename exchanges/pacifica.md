# Pacifica

Pacifica is a perpetual DEX focused on capital efficiency.

## Overview

- **Settlement**: USDC
- **Leverage**: Up to 50x
- **Status**: Fully supported

## Setup Guide

### 1. Create Account

1. Visit Pacifica exchange
2. Connect your wallet
3. Complete onboarding
4. Deposit collateral

### 2. Generate API Keys

1. Navigate to Account → API Management
2. Create new API key
3. Set permissions:
   - [x] Read positions
   - [x] Place orders
   - [ ] Withdraw funds
4. Save credentials securely

### 3. Connect to Arbital

1. In Arbital: **Settings → Exchanges → Add**
2. Select **Pacifica**
3. Enter API credentials
4. Verify connection

## Available Markets

- BTC-PERP
- ETH-PERP
- Additional pairs available

## Fee Structure

| Type | Rate |
|------|------|
| Maker | Rebate or low fee |
| Taker | 0.05% |
| Funding | 8-hour intervals |

## Pacifica-Specific Features

- High capital efficiency
- Competitive maker rebates
- Points/rewards program

## Best Practices

- Monitor funding rates — can be volatile
- Use appropriate position sizing
- Check liquidation prices before deployment
