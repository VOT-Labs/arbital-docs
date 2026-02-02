# Extended (Hyperliquid)

Extended is Arbital's integration with Hyperliquid, a high-performance L1 built specifically for trading.

> **Note:** "Extended" is the internal name used in Arbital. It connects to Hyperliquid exchange.

## Overview

| Property | Value |
|----------|-------|
| **Chain** | Hyperliquid L1 (EVM-compatible) |
| **Settlement** | USDC |
| **Wallet Type** | EVM (MetaMask, WalletConnect, etc.) |
| **Min Balance** | $20 USD |
| **Status** | Live |

## Setup Guide

### 1. Prepare Your Wallet

1. Have an EVM wallet ready (MetaMask recommended)
2. Ensure you have USDC on Hyperliquid
3. Minimum $20 balance required for credential binding

### 2. Connect in Arbital

1. Go to **Create Bot**
2. Select **Extended** as your exchange
3. Click **Connect Wallet**
4. Approve the wallet connection

### 3. Bind Credentials

1. After wallet connection, click **Create Credentials**
2. Sign the authentication message in your wallet
3. Wait for credential binding confirmation
4. Your balance will be verified automatically

The credential binding process:
- Links your wallet to Arbital securely
- Uses EVM message signing (no private key sharing)
- Grants trading permissions only (no withdrawal access)

## Available Markets

| Market | Price Decimals | Size Decimals |
|--------|----------------|---------------|
| BTC | 1 | 5 |
| ETH | 1 | 3 |
| SOL | 2 | 2 |
| DOGE | 4 | 0 |
| XRP | 4 | 1 |
| LINK | 3 | 2 |
| HYPE | 3 | 2 |
| AAVE | 2 | 2 |
| VIRTUAL | 4 | 1 |
| XPL | 4 | 1 |
| ASTER | 4 | 1 |

## Fee Structure

| Type | Rate |
|------|------|
| Exchange Fee | 0.01-0.02% |
| Arbital Fee | 0.02% |
| **Total** | **0.03-0.04%** |

## Hyperliquid Advantages

- **Sub-second finality** — Fast order execution
- **Deep liquidity** — Suitable for larger positions
- **Wide market selection** — 50+ perpetual markets
- **Points program** — Earn additional rewards

## Troubleshooting

### Credential Binding Failed
- Ensure you signed the message correctly
- Check your wallet is connected to the right network
- Try disconnecting and reconnecting your wallet

### Insufficient Balance
- Minimum $20 USD required
- Check your USDC balance on Hyperliquid
- Bridge more USDC if needed

### Balance Not Showing
- Wait a few seconds for balance to sync
- Refresh the page
- Ensure your wallet is the same one with funds on Hyperliquid

## Tips

- Extended/Hyperliquid has excellent liquidity for larger positions
- Monitor the Hyperliquid points program for additional rewards
- Use EVM wallets that support message signing (MetaMask, Rainbow, etc.)

---

*Last updated: 2026-02-02*
