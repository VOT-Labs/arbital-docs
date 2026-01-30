# Lighter

Lighter is a high-performance perpetual DEX on Solana.

## Overview

- **Chain**: Solana
- **Settlement**: USDC
- **Leverage**: Up to 20x
- **Status**: Fully supported

## Setup Guide

### 1. Create Lighter Account

1. Visit [lighter.xyz](https://lighter.xyz)
2. Connect your Solana wallet
3. Deposit USDC as collateral

### 2. Generate API Keys

1. Go to Lighter → Settings → API
2. Click **Create New Key**
3. Enable permissions:
   - [x] Read
   - [x] Trade
   - [ ] Withdraw (leave unchecked)
4. Copy and save your API key and secret

### 3. Add to Arbital

1. In Arbital, go to **Settings → Exchanges**
2. Select **Lighter**
3. Paste your API Key and Secret
4. Click **Verify Connection**

## Available Markets

- BTC-PERP
- ETH-PERP
- SOL-PERP

## Fees

| Type | Fee |
|------|-----|
| Maker | 0.02% |
| Taker | 0.05% |
| Funding | Variable (8h) |

## Tips for Lighter

- Solana transactions are fast — bots can update frequently
- Watch for Solana congestion during high volatility
- USDC on Solana required for collateral
