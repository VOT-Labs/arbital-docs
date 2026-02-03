# MetaMask Setup Guide

Connect your MetaMask wallet to Arbital for trading on EVM-based exchanges (Extended/Hyperliquid).

## Prerequisites

- Chrome, Firefox, Brave, or Edge browser
- MetaMask extension installed

## Step 1: Install MetaMask

If you don't have MetaMask yet:

1. Visit [metamask.io](https://metamask.io/download/)
2. Click **Download** for your browser
3. Add the extension to your browser
4. Create a new wallet or import an existing one

{% hint style="warning" %}
**Security:** Never share your seed phrase. MetaMask will never ask for it. Store it offline in a secure location.
{% endhint %}

## Step 2: Fund Your Wallet

For trading on Arbital, you'll need funds on the exchange, not in MetaMask directly. However, MetaMask is used for:

- **Authentication** — Proving wallet ownership
- **Credential binding** — Linking your trading permissions

No ETH gas is required for Arbital operations (signing only).

## Step 3: Connect to Arbital

1. Visit [arbital.xyz](https://arbital.xyz)
2. Click **Connect Wallet**
3. Select **MetaMask** from the wallet list
4. MetaMask popup appears — click **Connect**
5. Sign the authentication message
   - This is a **text signature**, not a transaction
   - No gas fees
   - Message includes timestamp for security

## Step 4: Bind Exchange Credentials

### For Extended (Hyperliquid)

1. Select **Extended** as your exchange
2. Click **Create Credentials**
3. Sign the binding message
4. Ensure you have $20+ balance on Hyperliquid
5. Credentials linked

## Network Configuration

Arbital works across multiple networks. MetaMask doesn't need to be on a specific chain for signing — the authentication works universally.

**Supported networks for reference:**
- Ethereum Mainnet
- Arbitrum
- Other EVM chains

## Troubleshooting

### MetaMask Popup Not Appearing

1. Check if MetaMask icon shows a notification badge
2. Click the MetaMask extension icon manually
3. The pending request should appear

### "User Rejected" Error

- You clicked **Reject** in the MetaMask popup
- Try again and click **Sign** or **Connect**

### Wrong Account Connected

1. Click your wallet address in Arbital navbar
2. Click **Disconnect**
3. In MetaMask, click your account icon
4. Select the correct account
5. Reconnect to Arbital

### Multiple Wallet Extensions

If you have multiple wallet extensions (Rainbow, Coinbase, etc.):

1. Disable other extensions temporarily
2. Or click the MetaMask option specifically in Arbital

## Security Best Practices

- <i class="fa-circle-check">:circle-check:</i> **Lock MetaMask** when not in use
- <i class="fa-circle-check">:circle-check:</i> **Review all signature requests** before approving
- <i class="fa-circle-check">:circle-check:</i> **Verify the domain** is arbital.xyz
- <i class="fa-circle-check">:circle-check:</i> **Use a hardware wallet** for large balances (see [Ledger Guide](ledger.md))
- <i class="fa-circle-xmark">:circle-xmark:</i> **Never share** your seed phrase
- <i class="fa-circle-xmark">:circle-xmark:</i> **Never sign** messages you don't understand

## Next Steps

- [Create Your First Bot](../create-first-bot.md)
- [Extended (Hyperliquid) Guide](../../exchanges/extended.md)

---

*Last updated: 2026-02-03*
