# Supported Exchanges

Arbital integrates with leading perpetual DEXs across multiple chains.

## Currently Supported

| Exchange | Chain | Wallet | Min Balance | Status |
|----------|-------|--------|-------------|--------|
| [Lighter](lighter.md) | EVM | MetaMask, WalletConnect | None | **Live** |
| [Pacifica](pacifica.md) | Solana | Phantom, Solflare | $20 | **Live** |
| [Extended](extended.md) | EVM (Hyperliquid) | MetaMask, WalletConnect | $20 | **Live** |

## Exchange Comparison

| Feature | Lighter | Pacifica | Extended |
|---------|---------|----------|----------|
| **Setup Complexity** | Simple | Medium | Simple |
| **Fee Range** | 0.02-0.03% | 0.035-0.045% | 0.03-0.04% |
| **Referral Required** | No | Yes | No |
| **Min Balance** | None | $20 | $20 |
| **Credential Type** | EVM Signature | Solana Agent | EVM Signature |

## Exchange Selection Guide

### For Beginners
**Lighter** — Simplest setup, no minimum balance, low fees.

### For Solana Users
**Pacifica** — Native Solana integration, fast transactions, points program.

### For High Volume
**Extended (Hyperliquid)** — Deep liquidity, wide market selection, established platform.

### For Points Farming
Perpetual DEXs actively reward liquidity providers. Professional market makers have historically earned six to eight figure rewards from these programs — Arbital gives everyday users access to the same opportunity.

**Current incentive programs:**
- **Extended/Hyperliquid** — $HYPE token rewards and points program
- **Pacifica** — $LIT points farming program
- **Aster** — $ASTER early liquidity incentives

Monitor exchange announcements for seasonal campaigns and updated reward structures.

## Fee Structure

Arbital charges a builder fee of **2 bps (0.02%)** on executed volume, in addition to exchange fees.

**Example:** For every **$1M in trading volume**, total fees are approximately **~$350** (1.5 bps average exchange fee + 2.0 bps Arbital fee = 3.5 bps total).

## Credential Binding

Arbital uses secure credential binding instead of storing API keys:

### How It Works
1. Connect your wallet to Arbital
2. Sign an authentication message
3. Your wallet address is linked to trading permissions
4. No private keys or API secrets are ever stored

### Security Benefits
- **Non-custodial** — Your funds stay in your exchange account
- **No key exposure** — Private keys never leave your wallet
- **Trading only** — No withdrawal permissions granted
- **Revocable** — Unbind credentials anytime from the dashboard

## Available Markets

All exchanges support trading on these markets:

| Market | Description |
|--------|-------------|
| BTC | Bitcoin perpetual |
| ETH | Ethereum perpetual |
| SOL | Solana perpetual |
| DOGE | Dogecoin perpetual |
| XRP | Ripple perpetual |
| LINK | Chainlink perpetual |
| HYPE | Hyperliquid perpetual |
| AAVE | Aave perpetual |
| VIRTUAL | Virtual perpetual |
| XPL | XPL perpetual |
| ASTER | Aster perpetual |

## Coming Soon

Arbital is continuously expanding exchange support:

- Aster
- Hibachi
- Based App
- Additional perpetual DEXs

## Troubleshooting

### Exchange Not Connecting
1. Ensure your wallet is on the correct network
2. Try disconnecting and reconnecting
3. Clear browser cache and reload
4. Check the exchange's status page

### Credential Binding Failed
1. Make sure you signed the message in your wallet
2. Check you have sufficient balance (if required)
3. For Pacifica, complete referral approval first
4. Try the process again

### Balance Not Syncing
1. Wait 10-15 seconds for balance to update
2. Refresh the page
3. Verify funds on the exchange directly
4. Check network status for delays

---

*Last updated: 2026-02-03*
