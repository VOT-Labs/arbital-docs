# Inventory Management

## What is Inventory?

Inventory = how much of the asset the bot is currently holding (long or short).

**Example:**

* If the bot buys more than it sells → it becomes long
* If it sells more than it buys → it becomes short

## How Arbital Manages Inventory Automatically

Arbital actively prevents runaway exposure by:

* Reducing buys when inventory is too long
* Reducing sells when inventory is too short
* Adjusting spreads dynamically
* Stopping one-sided trading if limits are hit

You don't need to manually rebalance — the bot does this continuously.

## Directional Bias

Directional bias allows you to tilt execution toward buying or selling earlier in time, while still running a two-sided market making strategy.

* The bot will always place both buy and sell orders.
* Bias only affects **when** buys and sells happen — not **whether** they happen.

### Neutral (0.0)

* Buy and sell orders are distributed evenly over time
* Inventory stays close to zero
* No directional exposure

This is pure market making.

### Long Bias (+0.5 to +1.0)

* Buy orders are executed earlier than sell orders
* Sell orders are executed later, not removed
* Inventory becomes temporarily long

This allows you to accumulate a position gradually, while continuing to earn maker fees.

### Short Bias (-0.5 to -1.0)

* Sell orders are executed earlier than buy orders
* Buy orders are executed later, not removed
* Inventory becomes temporarily short

This allows you to reduce or distribute a position gradually, while continuing to earn maker fees.

### Important Notes

* The strategy always market makes on both sides
* Total buy and sell volume still converges over the full run
* Bias increases temporary inventory and margin usage
* Margin requirements increase by up to 20% at higher bias levels
