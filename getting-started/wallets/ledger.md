# Ledger Hardware Wallet Guide

Use your Ledger hardware wallet with Arbital for enhanced security on larger balances.

## Why Use a Hardware Wallet?

- **Private keys never leave the device** — Even if your computer is compromised
- **Physical confirmation required** — Every signature must be approved on the device
- **Best for larger balances** — Recommended for portfolios over $1,000

{% hint style="info" %}
**How it works:** Arbital only requires message signatures (not transactions). Your Ledger signs these messages, proving you own the wallet without exposing private keys.
{% endhint %}

## Supported Ledger Devices

- Ledger Nano S / S Plus
- Ledger Nano X
- Ledger Stax

## Prerequisites

- Ledger device with firmware updated
- Ledger Live installed
- MetaMask (for EVM) or Phantom (for Solana) connected to Ledger

---

## EVM Setup (Extended)

### Step 1: Connect Ledger to MetaMask

1. **Install Ethereum app** on your Ledger via Ledger Live
2. **Open MetaMask** browser extension
3. Click **Menu** (three dots) → **Connect Hardware Wallet**
4. Select **Ledger**
5. Choose your account(s) to import
6. Your Ledger accounts appear in MetaMask

### Step 2: Enable Blind Signing

For EIP-712 typed data signing (used by Arbital):

1. Open the **Ethereum app** on your Ledger
2. Go to **Settings** (within the app)
3. Enable **Blind Signing**

{% hint style="warning" %}
**Blind Signing:** This allows signing structured data that can't be fully displayed on the Ledger screen. Only enable for trusted applications like Arbital.
{% endhint %}

### Step 3: Connect to Arbital

1. **Unlock your Ledger** and open the Ethereum app
2. Visit [arbital.xyz](https://arbital.xyz)
3. Click **Connect Wallet** → Select **MetaMask**
4. Choose your Ledger account
5. **Sign on your Ledger device** when prompted
   - Review the message on screen
   - Press both buttons to confirm

### Step 4: Bind Exchange Credentials

1. Select **Extended** as your exchange
2. Click **Create Credentials**
3. **Confirm on your Ledger** — Message appears on device
4. Press both buttons to sign
5. Credentials bound successfully

---

## Solana Setup (Pacifica)

### Step 1: Connect Ledger to Phantom

1. **Install Solana app** on your Ledger via Ledger Live
2. **Open Phantom** browser extension
3. Click **Menu** → **Connect Hardware Wallet**
4. Select **Ledger**
5. Follow prompts to connect
6. Your Ledger Solana account appears in Phantom

### Step 2: Connect to Arbital

1. **Unlock your Ledger** and open the Solana app
2. Visit [arbital.xyz](https://arbital.xyz)
3. Click **Connect Wallet** → Select **Phantom**
4. Choose your Ledger account
5. **Sign on your Ledger device** when prompted

### Step 3: Bind Pacifica Credentials

1. Select **Pacifica** as your exchange
2. **Approve Referral** — Confirm on Ledger
3. **Create Credentials** — Confirm on Ledger
4. Agent bound to your hardware wallet

---

## Troubleshooting

### "Ledger Device Not Found"

1. Ensure Ledger is **unlocked** and **connected via USB**
2. Open the correct app (Ethereum or Solana)
3. Try a different USB port or cable
4. Disable Ledger Live if open (can conflict)

### "Blind Signing Not Enabled"

For EVM:
1. Open Ethereum app on Ledger
2. Navigate to Settings
3. Enable Blind Signing
4. Try the signature again

### Signature Timeout

Ledger requires physical confirmation within ~30 seconds:
1. Watch your Ledger screen for the prompt
2. Press both buttons to confirm quickly
3. If timed out, retry the action in Arbital

### "Transport Error"

1. Disconnect and reconnect your Ledger
2. Close other apps that might use the device
3. Restart your browser
4. Try a different browser (Chrome recommended)

### Transaction Shows Different on Screen

The Ledger screen shows a hash/summary, not full details for EIP-712 messages. This is normal for typed data signing. **Verify you're on arbital.xyz** before signing.

---

## Security Best Practices

- <i class="fa-circle-check">:circle-check:</i> **Always verify the domain** before signing
- <i class="fa-circle-check">:circle-check:</i> **Keep firmware updated** via Ledger Live
- <i class="fa-circle-check">:circle-check:</i> **Store recovery phrase offline** in multiple secure locations
- <i class="fa-circle-check">:circle-check:</i> **Use a dedicated browser profile** for crypto activities
- <i class="fa-circle-check">:circle-check:</i> **Physically verify** each signature request on device
- <i class="fa-circle-xmark">:circle-xmark:</i> **Never enter recovery phrase** on any website or app
- <i class="fa-circle-xmark">:circle-xmark:</i> **Never share** your device PIN

## Next Steps

- [Create Your First Bot](../create-first-bot.md)
- [MetaMask Guide](metamask.md) (for EVM details)
- [Phantom Guide](phantom.md) (for Solana details)
- [Security Best Practices](../../guides/security.md)

---

*Last updated: 2026-02-03*
