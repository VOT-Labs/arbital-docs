# Supported Exchanges

Arbital integrates with leading perpetual DEXs across multiple chains.

## Currently Supported

| Exchange | Chain | Status | Features |
|----------|-------|--------|----------|
| [Lighter](lighter.md) | Solana | Live | Full support |
| [Pacifica](pacifica.md) | — | Live | Full support |
| [Hyperliquid](hyperliquid.md) | L1 | Live | Full support |
| Aster | — | Beta | Limited |
| Hibachi | — | Beta | Limited |
| Based App | Base | Beta | Limited |

## Exchange Selection Guide

**For beginners:** Start with Lighter — user-friendly, good liquidity, Solana-native.

**For high volume:** Hyperliquid — deep liquidity, fast execution, established.

**For points farming:** Check current incentive programs on each exchange.

## API Key Requirements

All exchanges require API keys with:
- **Read** — View balances and positions
- **Trade** — Place and cancel orders

{% hint style="danger" %}
Never enable withdrawal permissions on API keys used with Arbital.
{% endhint %}

## Adding a New Exchange

1. Go to **Settings → Exchanges**
2. Click **Add Exchange**
3. Select the exchange
4. Follow exchange-specific setup instructions
5. Enter API credentials
6. Click **Verify & Save**

## Coming Soon

- dYdX v4
- GMX
- Vertex
- More Solana perps
