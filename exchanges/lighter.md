# Lighter

Lighter is a high-performance perpetual DEX.

## Overview

| Property | Value |
|----------|-------|
| **Chain** | EVM |
| **Settlement** | USDC |
| **Wallet Type** | EVM (MetaMask, WalletConnect, etc.) |
| **Min Balance** | No minimum |
| **Status** | Live |

## Setup Guide

### 1. Prepare Your Wallet

1. Have an EVM wallet ready (MetaMask recommended)
2. Ensure you have USDC deposited on Lighter

### 2. Connect in Arbital

1. Go to **Create Bot**
2. Select **Lighter** as your exchange
3. Click **Connect Wallet**
4. Approve the wallet connection in your wallet

### 3. Bind Credentials

1. After wallet connection, click **Create Credentials**
2. Sign the authentication message in your wallet
3. Wait for credential binding confirmation

The credential binding process:
- Uses EVM message signing (your private key never leaves your wallet)
- Links your wallet address to Arbital securely
- Grants trading permissions only

## Available Markets

| Market | Price Decimals | Size Decimals |
|--------|----------------|---------------|
| BTC | 1 | 5 |
| ETH | 2 | 4 |
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
| Exchange Fee | 0-0.01% |
| Arbital Fee | 0.02% |
| **Total** | **0.02-0.03%** |

Lighter offers competitive maker fees, making it ideal for market-making strategies.

## Lighter Advantages

- **Low fees** — Competitive maker/taker structure
- **No minimum balance** — Start with any amount
- **Fast execution** — Quick order placement and cancellation
- **Simple setup** — Just wallet signature, no API key management

## Troubleshooting

### Credential Binding Failed
- Ensure you signed the message correctly
- Try disconnecting and reconnecting your wallet
- Clear browser cache and try again

### Orders Not Placing
- Check your USDC balance on Lighter
- Verify the market is active
- Ensure your position doesn't exceed limits

### Connection Issues
- Verify your wallet is connected to the correct network
- Try refreshing the page
- Check Lighter's status page for any outages

## Tips

- Lighter's low fees make it excellent for frequent trading
- Start with smaller positions to test your strategy
- Monitor your positions through both Arbital and Lighter dashboards

---

*Last updated: 2026-02-02*
