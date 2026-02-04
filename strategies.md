# Strategies

### Core Strategy: TWAP Market Making

Arbital's core strategy is a TWAP-based passive market maker.

TWAP (Time-Weighted Average Price) means orders are placed gradually over time, rather than all at once. \
\
But unlike traditional TWAP (used for execution), Arbital's TWAP is designed for market making, not directional trading.

### What the Bot Actually Does

At all times, the bot:

* Places limit buy orders slightly below market price
* Places limit sell orders slightly above market price
* Refreshes these orders every few seconds

So it:

* Buys low
* Sells high
* Repeats this many times

This creates:

* Trading volume
* Spread capture
