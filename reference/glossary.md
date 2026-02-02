# Glossary

Quick reference for terms used throughout Arbital documentation.

## A

**Agent Binding** — Solana-specific process for linking wallet credentials to Arbital. Used on Pacifica exchange.

**Aggressive Mode** — Execution mode with 3-second refresh intervals. Fastest response to market changes, higher costs.

## B

**Bias** — Directional preference from -1 (full short) to +1 (full long). A bias of 0 is neutral/delta-neutral.

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

**Lighter** — Supported exchange using EVM wallet for credential binding.

**Liquidation** — Forced closure of position when margin is insufficient.

## M

**Maker** — Trader who adds liquidity by placing limit orders.

**Market Making** — Providing liquidity by quoting both buy and sell prices, profiting from the spread.

**Max Inventory** — Hard limit on directional position exposure in USD. When reached, bot only places orders to reduce position.

**Mode** — See "Execution Mode".

## N

**Normal Mode** — Execution mode with 5-second refresh intervals. Balanced approach for most conditions.

**Notional** — The total USD value to trade in a TWAP strategy, split between buy and sell orders based on bias.

## O

**Order Book** — List of buy and sell orders at various prices on an exchange.

## P

**Pacifica** — Supported exchange on Solana requiring referral approval and agent binding.

**Passive Mode** — Execution mode with 7-second refresh intervals. Slower response, lower costs.

**Pending** — Bot state when queued and connecting to exchange before running.

**Perpetual Futures (Perps)** — Futures contracts with no expiration date.

**Position** — Your current holding in a market (long or short).

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
