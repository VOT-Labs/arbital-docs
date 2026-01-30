# Troubleshooting

Common issues and how to resolve them.

## Connection Issues

### Wallet Won't Connect

**Symptoms:**
- Wallet popup doesn't appear
- Connection times out
- "User rejected" error

**Solutions:**
1. Ensure your wallet extension is unlocked
2. Check you're on the correct network (EVM or Solana)
3. Try disconnecting and reconnecting
4. Clear browser cache and reload
5. Disable other wallet extensions that may conflict
6. Try a different browser

### Credential Binding Failed

**Symptoms:**
- "Signature failed" error
- Binding process hangs
- Credentials not saving

**Solutions:**
1. Make sure you signed the message in your wallet
2. Don't modify the message before signing
3. Check your wallet didn't timeout
4. For Pacifica: complete referral approval first
5. Ensure minimum balance requirements are met
6. Try the entire process again from wallet connection

### Exchange Connection Lost

**Symptoms:**
- Bot shows "disconnected" status
- Orders not placing
- Balance not updating

**Solutions:**
1. Check the exchange's status page for outages
2. Verify your credentials are still valid
3. Re-bind credentials if necessary
4. Check network connectivity

---

## Bot Issues

### Bot Stuck in Pending

**Symptoms:**
- Status shows "pending" for extended time
- Bot never transitions to "running"

**Causes:**
- Exchange API issues
- Network congestion
- Invalid credentials

**Solutions:**
1. Wait 2-3 minutes (normal startup can take time)
2. Check exchange status page
3. Stop and restart the bot
4. Verify credentials are valid
5. Check if you have sufficient balance

### Bot Stuck in Stopping

**Symptoms:**
- Status shows "stopping" indefinitely
- Can't restart the bot

**Causes:**
- Open orders taking time to cancel
- Exchange API delays
- Network issues

**Solutions:**
1. Wait 5 minutes for graceful shutdown
2. Check exchange for any remaining open orders
3. Contact support if stuck for >10 minutes

### Bot Shows Failed Status

**Symptoms:**
- Status changed to "failed"
- Bot stopped unexpectedly

**Causes:**
- Insufficient balance
- Exchange API error
- Position limit reached
- Credential invalidation

**Solutions:**
1. Check the error message in bot details
2. Verify sufficient balance on exchange
3. Check if credentials are still valid
4. Review position limits
5. Restart the bot after fixing the issue

### Orders Not Filling

**Symptoms:**
- Bot is running but no trades
- Volume shows 0

**Causes:**
- Spread too wide
- Market too illiquid
- Price moving faster than refresh rate

**Solutions:**
1. Use more aggressive execution mode
2. Check the market has sufficient liquidity
3. Reduce order size
4. Try a more liquid market (BTC, ETH)

---

## Balance & Funding Issues

### Insufficient Balance Error

**Symptoms:**
- Can't create bot
- Bot fails to start
- "Insufficient balance" message

**Solutions:**
1. Check your actual balance on the exchange
2. Ensure balance meets minimum requirements:
   - Pacifica: $20 minimum
   - Extended: $20 minimum
3. Account for existing positions/margin
4. Deposit more funds if needed

### Balance Not Showing

**Symptoms:**
- Balance shows $0 or outdated amount
- Refresh doesn't update

**Solutions:**
1. Wait 10-15 seconds for sync
2. Refresh the page
3. Verify funds on exchange directly
4. Disconnect and reconnect wallet
5. Check if correct wallet is connected

### Balance Mismatch

**Symptoms:**
- Arbital shows different balance than exchange

**Causes:**
- Sync delay
- Unrealized PnL not reflected
- Different margin calculations

**Solutions:**
1. Balance syncs every few seconds
2. Check exchange for accurate real-time balance
3. Account for open positions and unrealized PnL

---

## Strategy Issues

### Inventory Building Up

**Symptoms:**
- Position size keeps growing
- Bot not rebalancing

**Solutions:**
1. Increase inventory skew factor
2. Reduce max inventory limit
3. Use more neutral bias
4. Switch to more aggressive mode
5. Manually close some position on exchange

### High Slippage

**Symptoms:**
- Fill prices worse than expected
- Large spreads on trades

**Solutions:**
1. Use smaller order sizes
2. Trade more liquid markets
3. Use passive execution mode
4. Avoid trading during high volatility

### Negative PnL

**Symptoms:**
- Losing money despite market making

**Causes:**
- Adverse selection (trading against informed flow)
- Inventory risk during trends
- Fee costs exceeding spread profits

**Solutions:**
1. Review your strategy parameters
2. Use tighter inventory management
3. Consider more neutral bias
4. Evaluate if market conditions suit market making
5. Try different markets or exchanges

---

## Account Issues

### Can't Access Dashboard

**Solutions:**
1. Clear browser cache and cookies
2. Try incognito/private window
3. Disable browser extensions
4. Try different browser
5. Check if your wallet is connected

### Multiple Wallets Confusion

**Symptoms:**
- Seeing wrong bots
- Balance from different account

**Solutions:**
1. Check which wallet is currently connected
2. Disconnect and connect correct wallet
3. Each wallet address has separate bots

---

## Getting Help

If these solutions don't resolve your issue:

1. **Check Status:** [status.arbital.xyz](https://status.arbital.xyz) for outages
2. **Discord:** Join our Discord for community support
3. **Telegram:** Contact support team directly
4. **Email:** support@arbital.xyz

When reporting issues, include:
- Your wallet address (public)
- Bot ID (if applicable)
- Exchange you're using
- Screenshots of error messages
- Steps to reproduce the issue
