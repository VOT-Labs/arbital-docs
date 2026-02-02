# API Reference

Arbital provides a REST API for bot management and monitoring.

## Authentication

All API requests require JWT authentication:

```
Authorization: Bearer <your_jwt_token>
```

Tokens are obtained through wallet-based authentication:
1. Request a challenge from `/auth/challenge`
2. Sign the challenge with your wallet
3. Verify the signature at `/auth/verify`
4. Receive JWT token for subsequent requests

## Base URL

```
https://api.arbital.xyz
```

---

## Rate Limits

| Endpoint Type | Limit |
|---------------|-------|
| Authentication (`/auth/*`) | 5 requests/minute |
| API (`/bots/*`, `/exchange/*`) | 10 requests/minute |

Exceeding limits returns `429 Too Many Requests`.

---

## Account Limits

| Limit | Value |
|-------|-------|
| Maximum active bots | 2 per user |
| Minimum balance (Pacifica/Extended) | $20 USD |

---

## Endpoints

### Authentication

#### Get Challenge
```http
GET /auth/challenge
```

Returns a challenge message for wallet signing.

**Response:**
```json
{
  "challenge": "Sign this message to authenticate: abc123...",
  "expiresAt": "2024-01-15T12:00:00Z"
}
```

#### Verify Signature
```http
POST /auth/verify
```

**Body:**
```json
{
  "walletAddress": "0x...",
  "signature": "0x...",
  "challenge": "..."
}
```

**Response:**
```json
{
  "token": "eyJhbG...",
  "expiresAt": "2024-01-15T12:00:00Z"
}
```

#### Redeem Access Code
```http
POST /auth/redeem
```

Redeem an invite code for beta access.

**Body:**
```json
{
  "accessCode": "ABC123",
  "walletAddress": "0x...",
  "telegramId": "@username",
  "signature": "0x..."
}
```

**Note:** The access code must be signed by the wallet to prevent unauthorized redemption.

#### Refresh Token
```http
GET /auth/refresh
```

Returns a new JWT token.

---

### Bot Management

#### Create Bot
```http
POST /bots
```

**Limits:** Maximum 2 bots per user.

**Body:**
```json
{
  "credential_id": "uuid",
  "wallet_address": "0x...",
  "name": "my_eth_bot",
  "exchange": "lighter",
  "market": "ETH",
  "strategy_type": "twap",
  "strategy_config": {
    "notional": 1000,
    "budget": 500,
    "mode": "normal",
    "bias": 0,
    "max_inventory_usd": 2000,
    "inventory_skew_factor": 0.5
  }
}
```

**Strategy Config Parameters:**

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| `notional` | number | Yes | Total USD to trade |
| `budget` | number | No | Collateral budget |
| `mode` | string | Yes | "aggressive", "normal", or "passive" |
| `bias` | number | No | -1 to +1 (default: 0) |
| `max_inventory_usd` | number | No | Max position exposure |
| `inventory_skew_factor` | number | No | 0-1 rebalancing aggressiveness |

**Response:**
```json
{
  "id": "uuid",
  "name": "my_eth_bot",
  "status": "idle",
  "createdAt": "2024-01-15T12:00:00Z"
}
```

#### List Bots
```http
GET /bots
```

Returns all bots for the authenticated user.

**Response:**
```json
{
  "bots": [
    {
      "id": "uuid",
      "name": "my_eth_bot",
      "exchange": "lighter",
      "market": "ETH",
      "status": "running",
      "pnl": 125.50
    }
  ]
}
```

#### Get Bot Details
```http
GET /bots/:instanceId
```

**Response:**
```json
{
  "id": "uuid",
  "name": "my_eth_bot",
  "exchange": "lighter",
  "market": "ETH",
  "status": "running",
  "strategy_type": "twap",
  "strategy_config": { ... },
  "createdAt": "2024-01-15T12:00:00Z",
  "startedAt": "2024-01-15T12:05:00Z"
}
```

#### Update Bot
```http
PUT /bots/:instanceId
```

Update bot configuration. Only allowed when status is: `idle`, `stopped`, or `failed`.

**Body:**
```json
{
  "strategy_config": {
    "notional": 2000,
    "mode": "aggressive"
  }
}
```

#### Update Bot Name
```http
PUT /bots/:instanceId/name
```

**Body:**
```json
{
  "name": "new_bot_name"
}
```

#### Delete Bot
```http
DELETE /bots/:instanceId
```

Permanently removes the bot.

---

### Bot Control

#### Start Bot
```http
POST /bots/:instanceId/start
```

Starts the bot. Status changes to `pending`, then `running`.

**Response:**
```json
{
  "id": "uuid",
  "status": "pending"
}
```

#### Stop Bot
```http
POST /bots/:instanceId/stop
```

Gracefully stops the bot. Cancels open orders.

**Response:**
```json
{
  "id": "uuid",
  "status": "stopping"
}
```

---

### Reports & Monitoring

#### Get Balance History
```http
GET /bots/:instanceId/report/balance
```

Returns account balance over time.

**Query Parameters:**
- `timeframe` — Aggregation period: "5m", "15m", "1h", "4h", "1d", "1w"

**Response:**
```json
{
  "data": [
    {
      "timestamp": "2024-01-15T12:00:00Z",
      "balance": 1500.50
    }
  ]
}
```

#### Get Volume Report
```http
GET /bots/:instanceId/report/volume
```

Returns trading volume metrics.

**Response:**
```json
{
  "volume_24h": 5000.00,
  "volume_total": 50000.00,
  "buy_volume": 25500.00,
  "sell_volume": 24500.00
}
```

#### Get Positions
```http
GET /bots/:instanceId/positions
```

Returns current open positions.

**Response:**
```json
{
  "positions": [
    {
      "symbol": "ETH-PERP",
      "side": "long",
      "size": 0.5,
      "entry_price": 2100.00,
      "mark_price": 2150.00,
      "liquidation_price": 1800.00,
      "unrealized_pnl": 25.00
    }
  ]
}
```

#### Get Events
```http
GET /bots/:instanceId/events
```

Returns bot activity events.

**Query Parameters:**
- `page` — Page number (default: 1)
- `limit` — Items per page (default: 10)

**Response:**
```json
{
  "events": [
    {
      "type": "order_filled",
      "side": "buy",
      "price": 2150.00,
      "size": 0.1,
      "timestamp": "2024-01-15T12:10:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "total_pages": 5
  }
}
```

#### Get Trades
```http
GET /bots/:instanceId/trades
```

Returns executed trades.

**Query Parameters:**
- `page` — Page number (default: 1)
- `limit` — Items per page (default: 10)

**Response:**
```json
{
  "trades": [
    {
      "id": "uuid",
      "side": "buy",
      "size": 0.5,
      "entry_price": 2100.00,
      "exit_price": 2150.00,
      "pnl": 25.00,
      "status": "closed",
      "timestamp": "2024-01-15T12:10:00Z"
    }
  ]
}
```

#### Get Trade Statistics
```http
GET /bots/:instanceId/trades/stats
```

Returns aggregated trade statistics.

**Response:**
```json
{
  "total_trades": 150,
  "buy_volume": 25500.00,
  "sell_volume": 24500.00,
  "realized_pnl": 125.50,
  "total_fees": 25.00
}
```

---

### Exchange Integration

#### Get Signing Message
```http
GET /exchange/:exchange/sign/message
```

Get the message to sign for credential binding.

**Exchanges:** `lighter`, `pacifica`, `extended`, `hyperliquid`

**Response:**
```json
{
  "message": "Sign this message to bind your account..."
}
```

#### Bind Exchange Credentials
```http
POST /exchange/:exchange/sign
```

Submit signed message to bind credentials.

**Body:**
```json
{
  "signature": "0x...",
  "walletAddress": "0x..."
}
```

#### Get Exchange Balance
```http
GET /exchange/:exchange/balance
```

Returns your balance on the exchange.

**Response:**
```json
{
  "balance": 1500.50,
  "currency": "USDC"
}
```

#### Check Pacifica Referral
```http
GET /exchange/pacifica/referral/check
```

Check if Arbital referral is approved for Pacifica.

#### Approve Pacifica Referral
```http
POST /exchange/pacifica/referral/approve
```

Approve Arbital referral on Pacifica.

---

## Error Responses

All errors follow this format:

```json
{
  "error": "error_code",
  "message": "Human-readable description"
}
```

### Common Error Codes

| Code | HTTP Status | Description |
|------|-------------|-------------|
| `unauthorized` | 401 | Invalid or expired token |
| `forbidden` | 403 | Action not permitted |
| `not_found` | 404 | Resource doesn't exist |
| `validation_error` | 400 | Invalid request body |
| `bot_limit_exceeded` | 400 | Maximum 2 bots per user |
| `bot_not_stopped` | 400 | Bot must be stopped to edit |
| `insufficient_balance` | 400 | Not enough funds (min $20) |
| `credential_not_found` | 400 | Exchange credentials missing |
| `exchange_error` | 502 | Exchange API failure |
| `rate_limited` | 429 | Too many requests |

---

## Webhooks (Coming Soon)

Subscribe to bot events:
- `bot.started`
- `bot.stopped`
- `bot.error`
- `trade.executed`

---

*Last updated: 2026-02-02*
