# Glossary

Quick reference for terms used throughout Arbital documentation.

{% hint style="info" %}
**Tip:** Use `Cmd/Ctrl + F` to search for specific terms.
{% endhint %}

## A

**Agent Binding** — Solana-specific process for linking wallet credentials to Arbital. Used on Pacifica exchange.

**Aggressive Mode** — Execution mode with 3-second refresh intervals. Fastest response to market changes, higher costs.

## B

**Balance Chart** — Dashboard visualization showing your account balance over time. Helps track bot performance.

**Bias** — Directional preference from -1 (full short) to +1 (full long). A bias of 0 is neutral/delta-neutral. Also called "Position Bias".

**Bot Lifecycle** — The states a bot transitions through: Idle → Pending → Running → Stopping → Stopped/Completed/Failed.

**Budget** — The expected fee allocation for your bot in USD. Determines how much you're willing to spend on trading fees.

**Boundary** — In grid trading, the price distance from start that triggers a stop-loss.

**Bot** — Automated trading program that executes your strategy on an exchange.

## C

**Collateral** — Assets deposited as margin for trading positions.

**Credential Binding** — Process of securely linking exchange API access to your wallet via message signature. No private keys are stored.

## D

**Delta** — Measure of position's directional exposure to price changes.

**Delta-Neutral** — Strategy with zero net directional exposure. Profits from fees and spreads rather than price direction.

## E

**Execution Mode** — How frequently the bot refreshes orders: Aggressive (3s), Normal (5s), or Passive (7s).

**Extended** — Arbital's internal name for the Hyperliquid exchange integration.

**EIP-712** — Ethereum signing standard for typed structured data. Used for secure wallet authentication without transactions.

## F

**Funding Rate** — Periodic payment between long and short position holders on perpetual futures.

## G

**Grid Market Maker** — Strategy that places orders at fixed price intervals to profit from oscillation.

**Grid Spacing** — Percentage distance between price levels in a grid strategy.

## I

**Inventory** — Your current position exposure, measured in USD.

**Inventory Skew Factor** — How aggressively the bot rebalances when inventory builds up. 0% = no adjustment, 100% = maximum adjustment.

## L

**Leverage** — Trading with borrowed capital to amplify position size.

**Liquidation** — Forced closure of position when margin is insufficient.

## M

**Maker** — Trader who adds liquidity by placing limit orders.

**Market Making** — Providing liquidity by quoting both buy and sell prices, profiting from the spread.

**Max Inventory** — Hard limit on directional position exposure in USD. When reached, bot only places orders to reduce position.

**Mode** — See "Execution Mode".

## N

**Non-Custodial** — Security model where Arbital never holds your funds or private keys. Your assets remain in your exchange account at all times.

**Normal Mode** — Execution mode with 5-second refresh intervals. Balanced approach for most conditions.

**Notional** — The total USD value to trade in a TWAP strategy, split between buy and sell orders based on bias.

## O

**Order Book** — List of buy and sell orders at various prices on an exchange.

## P

**Pacifica** — Supported exchange on Solana requiring referral approval and agent binding.

**Passive Mode** — Execution mode with 7-second refresh intervals. Slower response, lower costs.

**Pending** — Bot state when queued and connecting to exchange before running.

**Perpetual Futures (Perps)** — Futures contracts with no expiration date.

**Points** — Exchange reward tokens earned through trading activity. Many exchanges offer points programs to incentivize volume.

**Position** — Your current holding in a market (long or short).

**Position Bias** — See "Bias".

## R

**Reduce-Only** — Mode where bot only places orders to reduce existing positions, not increase them.

**Refresh Interval** — How often the bot re-evaluates and adjusts orders based on execution mode.

**Round Trip** — In grid trading, a completed buy→sell or sell→buy cycle that captures profit.

## S

**Skew Factor** — See "Inventory Skew Factor".

**Slippage** — Difference between expected and actual execution price.

**Spread** — Difference between best bid and ask prices.

**Strategy** — The trading approach: TWAP Market Maker or Grid Market Maker.

## T

**Taker** — Trader who removes liquidity by taking existing orders.

**TWAP** — Time-Weighted Average Price. Strategy that spreads orders over time to reduce market impact.

## U

**Unrealized P&L** — Profit/loss on open positions that hasn't been locked in by closing.

## V

**Volatility** — Measure of price movement magnitude over time.

## W

**Wallet** — Digital wallet (EVM or Solana) used for authentication and credential binding.

---

*Last updated: 2026-02-02*
