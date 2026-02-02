# Pacifica

Pacifica is a perpetual DEX on Solana focused on capital efficiency.

## Overview

| Property | Value |
|----------|-------|
| **Chain** | Solana |
| **Settlement** | USDC |
| **Wallet Type** | Solana (Phantom, Solflare, etc.) |
| **Min Balance** | $20 USD |
| **Status** | Live |

## Setup Guide

### 1. Prepare Your Wallet

1. Have a Solana wallet ready (Phantom or Solflare recommended)
2. Ensure you have at least $20 USDC on Pacifica
3. The minimum balance is required for credential binding

### 2. Connect in Arbital

1. Go to **Create Bot**
2. Select **Pacifica** as your exchange
3. Click **Connect Wallet**
4. Approve the wallet connection in your Solana wallet

### 3. Approve Referral

Pacifica requires referral approval as part of the setup:

1. After wallet connection, you'll see the referral approval step
2. Click **Approve Referral**
3. Sign the message in your Solana wallet
4. Wait for referral approval confirmation

### 4. Verify Balance

1. Your Pacifica balance is automatically checked
2. Minimum $20 USD required to proceed
3. If insufficient, deposit more USDC to Pacifica first

### 5. Bind Credentials

1. Click **Create Credentials**
2. Sign the agent binding message in your wallet
3. Wait for credential binding confirmation

The credential binding process:
- Uses Solana message signing (Ed25519)
- Creates an agent binding linked to your wallet
- Grants trading permissions only

## Available Markets

| Market | Price Decimals | Size Decimals | Min Order |
|--------|----------------|---------------|-----------|
| BTC | — | — | $10 |
| ETH | 1 | 4 | $10 |
| SOL | 2 | 2 | $10 |
| DOGE | — | — | $10 |
| XRP | — | — | $10 |
| LINK | — | — | $10 |
| HYPE | — | — | $10 |
| AAVE | — | — | $10 |
| VIRTUAL | — | — | $10 |
| XPL | — | — | $10 |
| ASTER | — | — | $10 |

## Fee Structure

| Type | Rate |
|------|------|
| Exchange Fee | 0.015-0.025% |
| Arbital Fee | 0.02% |
| **Total** | **0.035-0.045%** |

## Pacifica Advantages

- **Solana-native** — Fast, low-cost transactions
- **High capital efficiency** — Competitive margin requirements
- **Points program** — Earn rewards while trading
- **Referral benefits** — Arbital referral provides fee discounts

## Troubleshooting

### Referral Approval Failed
- Ensure you signed the message correctly
- Try disconnecting and reconnecting your wallet
- Check your Solana wallet for pending signature requests

### Insufficient Balance
- Minimum $20 USD required
- Deposit more USDC to Pacifica
- Wait for balance to sync (may take a few seconds)

### Credential Binding Failed
- Complete the referral approval step first
- Ensure sufficient balance ($20+)
- Try the process again from the beginning

### Balance Not Showing
- Wait a few seconds for balance to sync
- Refresh the page
- Ensure your wallet is the same one with funds on Pacifica

## Tips

- Complete all three steps in order: Referral → Balance Check → Credentials
- Pacifica's points program can provide additional rewards
- Monitor Solana network status during high congestion periods
- Keep extra USDC for trading fees and margin requirements

---

*Last updated: 2026-02-02*
