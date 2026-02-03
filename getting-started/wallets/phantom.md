# Phantom Wallet Setup Guide

Connect your Phantom wallet to Arbital for trading on Solana-based exchanges (Pacifica).

## Prerequisites

- Chrome, Firefox, Brave, or Edge browser
- Phantom extension installed

## Step 1: Install Phantom

If you don't have Phantom yet:

1. Visit [phantom.app](https://phantom.app/download)
2. Click **Download** for your browser
3. Add the extension to your browser
4. Create a new wallet or import an existing one

{% hint style="warning" %}
**Security:** Never share your recovery phrase. Phantom will never ask for it. Store it offline in a secure location.
{% endhint %}

## Step 2: Fund Your Wallet

For Pacifica trading, you need:

- **$20+ USDC** on Pacifica exchange
- SOL for Solana transaction fees (small amount, ~0.01 SOL)

Phantom is used for:
- **Authentication** — Proving wallet ownership
- **Agent binding** — Creating your Pacifica trading agent

## Step 3: Connect to Arbital

1. Visit [arbital.xyz](https://arbital.xyz)
2. Click **Connect Wallet**
3. Select **Phantom** from the wallet list
4. Phantom popup appears — click **Connect**
5. Sign the authentication message
   - This is a **text signature**, not a transaction
   - Minimal SOL fee (often zero)
   - Message includes timestamp for security

## Step 4: Bind Pacifica Credentials

Pacifica requires additional steps compared to EVM exchanges:

### 1. Approve Referral

1. Select **Pacifica** as your exchange
2. Click **Approve Referral**
3. Sign the referral message in Phantom
4. Wait for confirmation

### 2. Verify Balance

- Ensure you have **$20+ USDC** on Pacifica
- Balance is automatically checked

### 3. Create Agent

1. Click **Create Credentials**
2. Sign the agent binding message
3. Your trading agent is now linked to your wallet

{% hint style="info" %}
**What's an Agent?** On Solana, Arbital creates a trading agent tied to your wallet. This agent executes trades on your behalf without needing your private keys.
{% endhint %}

## Network Configuration

Phantom automatically connects to Solana Mainnet. No manual network configuration needed.

**Verify you're on Mainnet:**
1. Open Phantom
2. Click the gear icon (Settings)
3. Go to **Developer Settings**
4. Ensure **Mainnet** is selected

## Troubleshooting

### Phantom Popup Not Appearing

1. Check if Phantom icon shows a notification badge
2. Click the Phantom extension icon manually
3. The pending request should appear

### "User Rejected" Error

- You clicked **Cancel** in the Phantom popup
- Try again and click **Approve** or **Confirm**

### Insufficient Balance Error

- Ensure you have $20+ USDC on Pacifica
- Check you have a small amount of SOL for fees
- Refresh the page and try again

### Agent Already Exists

If you previously created an agent:
- Your existing agent will be used
- No need to create a new one
- If issues persist, contact support

### Transaction Failed

Solana network congestion can cause failures:
1. Wait a few minutes
2. Try again
3. Check [Solana Status](https://status.solana.com) for network issues

## Security Best Practices

- <i class="fa-circle-check">:circle-check:</i> **Lock Phantom** when not in use (auto-lock in settings)
- <i class="fa-circle-check">:circle-check:</i> **Review all signature requests** before approving
- <i class="fa-circle-check">:circle-check:</i> **Verify the domain** is arbital.xyz
- <i class="fa-circle-check">:circle-check:</i> **Enable transaction simulation** in Phantom settings
- <i class="fa-circle-check">:circle-check:</i> **Use a hardware wallet** for large balances (see [Ledger Guide](ledger.md))
- <i class="fa-circle-xmark">:circle-xmark:</i> **Never share** your recovery phrase
- <i class="fa-circle-xmark">:circle-xmark:</i> **Never sign** messages you don't understand

## Mobile App

Phantom also has mobile apps for iOS and Android. While you can manage your wallet on mobile, **bot creation and management should be done on desktop** via arbital.xyz.

## Next Steps

- [Create Your First Bot](../create-first-bot.md)
- [Pacifica Exchange Guide](../../exchanges/pacifica.md)
- [Troubleshooting](../../guides/troubleshooting.md)

---

*Last updated: 2026-02-03*
