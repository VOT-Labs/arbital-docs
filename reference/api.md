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
https://api.arbital.xyz/api/v1
```

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
GET /bots/:id
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
  "performance": {
    "buy_volume": 5000,
    "sell_volume": 4800,
    "realized_pnl": 125.50,
    "total_fees": 12.50
  },
  "createdAt": "2024-01-15T12:00:00Z",
  "startedAt": "2024-01-15T12:05:00Z"
}
```

#### Update Bot
```http
PUT /bots/:id
```

Update bot configuration (only when status is idle, stopped, or failed).

**Body:**
```json
{
  "strategy_config": {
    "notional": 2000,
    "mode": "aggressive"
  }
}
```

#### Delete Bot
```http
DELETE /bots/:id
```

Permanently removes the bot.

---

### Bot Control

#### Start Bot
```http
POST /bots/:id/start
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
POST /bots/:id/stop
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

### Reports

#### Get Trades
```http
GET /bots/:id/report/trades
```

**Query Parameters:**
- `from` — Start timestamp (ISO 8601)
- `to` — End timestamp (ISO 8601)
- `limit` — Max results (default: 100)

**Response:**
```json
{
  "trades": [
    {
      "id": "uuid",
      "side": "buy",
      "price": 2150.50,
      "size": 0.5,
      "fee": 0.02,
      "timestamp": "2024-01-15T12:10:00Z"
    }
  ]
}
```

#### Get Performance Summary
```http
GET /bots/:id/report/summary
```

**Response:**
```json
{
  "total_volume": 50000,
  "buy_volume": 25500,
  "sell_volume": 24500,
  "realized_pnl": 125.50,
  "unrealized_pnl": 15.20,
  "total_fees": 25.00,
  "fills_count": 150,
  "duration_hours": 24.5
}
```

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
| `bot_not_stopped` | 400 | Bot must be stopped to edit |
| `insufficient_balance` | 400 | Not enough funds |
| `exchange_error` | 502 | Exchange API failure |

---

## Rate Limits

| Endpoint Type | Limit |
|---------------|-------|
| Authentication | 10/minute |
| Bot Management | 60/minute |
| Reports | 30/minute |

Exceeding limits returns `429 Too Many Requests`.

---

## Webhooks (Coming Soon)

Subscribe to bot events:
- `bot.started`
- `bot.stopped`
- `bot.error`
- `trade.executed`
