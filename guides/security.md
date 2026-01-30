# Security Best Practices

Keep your trading operations secure with these guidelines.

## Non-Custodial Architecture

Arbital is designed with security first:

- **Your funds stay on the exchange** — Arbital never holds your assets
- **Credential binding, not key storage** — We link via wallet signatures
- **Trading permissions only** — No withdrawal access granted
- **Revocable access** — Unbind credentials anytime

## Credential Security

### How Credential Binding Works

Instead of storing your API keys, Arbital uses wallet-based authentication:

1. You connect your wallet to Arbital
2. Sign an authentication message
3. The signature links your wallet to trading permissions
4. Your private keys never leave your wallet

This approach:
- Eliminates API key storage risks
- Uses cryptographic proof of ownership
- Can be revoked by unbinding

### Best Practices

**DO:**
- Only bind credentials on the official Arbital website
- Verify you're on `arbital.xyz` before signing
- Review signature messages before approving
- Unbind credentials you're no longer using

**DON'T:**
- Share your wallet seed phrase with anyone
- Sign messages on unofficial sites
- Approve signatures you don't understand

## Wallet Security

### Hardware Wallets (Recommended)

Use hardware wallets for maximum security:
- **Ledger** — Supports EVM and Solana
- **Trezor** — Supports EVM

Benefits:
- Private keys never touch your computer
- Physical confirmation required for signatures
- Protected from malware

### Hot Wallet Best Practices

If using browser wallets (MetaMask, Phantom):

1. **Use a dedicated trading wallet**
   - Don't use your main savings wallet
   - Fund only what you need for trading

2. **Secure your seed phrase**
   - Write it down physically
   - Store in secure location (safe, bank)
   - Never store digitally

3. **Enable additional security**
   - Set a strong password
   - Enable auto-lock timeout
   - Consider hardware wallet integration

## Exchange Security

### Permission Principles

When Arbital binds credentials:
- **Read** — View balances and positions
- **Trade** — Place and cancel orders
- **No Withdraw** — Cannot move funds out

### What to Monitor

Regularly check on your exchange:
- Active API connections/sessions
- Recent trading activity
- Any unexpected positions

### Revoking Access

If you suspect unauthorized access:

1. **On the exchange:**
   - Revoke all API sessions
   - Change your password
   - Enable 2FA if not already

2. **On Arbital:**
   - Go to dashboard
   - Unbind all credentials
   - Re-bind only after securing exchange

## Operational Security

### Use Dedicated Browser Profile

Create a separate browser profile for trading:
- No random extensions
- Bookmarked official sites only
- Reduced phishing risk

### Verify URLs

Always check you're on the correct site:
- `arbital.xyz` — Official Arbital
- `lighter.xyz` — Official Lighter
- `hyperliquid.xyz` — Official Hyperliquid

Phishing sites often use:
- Misspellings (`arbita1.xyz`)
- Extra words (`arbital-app.xyz`)
- Different TLDs (`arbital.com`)

### Network Security

**DO:**
- Use secure, private networks
- Keep your operating system updated
- Use reputable VPN if on public networks

**DON'T:**
- Trade on public WiFi without VPN
- Ignore security warnings
- Click links in unsolicited messages

## Incident Response

### If You Suspect Compromise

**Immediate steps:**

1. **Stop all bots** from Arbital dashboard
2. **Unbind credentials** on Arbital
3. **Revoke API access** on exchange
4. **Close positions** manually if needed
5. **Change exchange password**
6. **Enable 2FA** if not enabled

### Reporting Security Issues

If you discover a security vulnerability:
- Email: security@arbital.xyz
- Do not disclose publicly
- Include detailed reproduction steps
- We appreciate responsible disclosure

## Regular Security Checklist

### Weekly

- [ ] Review open positions match expected
- [ ] Check bot activity logs
- [ ] Verify no unexpected trades

### Monthly

- [ ] Review all bound credentials
- [ ] Unbind any unused credentials
- [ ] Check exchange API session list
- [ ] Update wallet software if needed

### Quarterly

- [ ] Rotate wallet if using hot wallet
- [ ] Review security of seed phrase storage
- [ ] Verify backup procedures
- [ ] Test credential unbinding process

## Common Scams to Avoid

### Phishing

- Fake websites asking for seed phrases
- Emails claiming urgent action needed
- Social media impersonators

**Protection:** Always type URLs directly, never click email links

### Fake Support

- DMs offering to "help"
- Requests for private keys or signatures
- "Sync wallet" popups

**Protection:** Official support never asks for private keys

### Malicious Approvals

- Token approval scams
- Unlimited spending allowances
- Fake airdrop claims

**Protection:** Review all transactions before signing

## Summary

| Layer | Best Practice |
|-------|---------------|
| **Wallet** | Hardware wallet or dedicated hot wallet |
| **Credentials** | Bind only on official site, unbind when not needed |
| **Exchange** | Monitor activity, enable 2FA |
| **Browser** | Dedicated profile, verify URLs |
| **Network** | Secure connections, avoid public WiFi |
| **Monitoring** | Regular reviews, quick incident response |
