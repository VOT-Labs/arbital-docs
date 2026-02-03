#!/usr/bin/env bash
#
# generate-llms.sh — Regenerate llms-full.txt from all doc pages.
# Run from repo root: ./scripts/generate-llms.sh
#
# llms.txt is maintained manually (curated descriptions).
# llms-full.txt is auto-generated (full content concatenation).

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUTPUT="$REPO_ROOT/llms-full.txt"
BASE_URL="https://arbital-1.gitbook.io/docs"

# Ordered list of doc pages (matches SUMMARY.md navigation)
PAGES=(
  "README.md"
  "overview/how-it-works.md"
  "overview/key-concepts.md"
  "getting-started/quick-start.md"
  "getting-started/connect-wallet.md"
  "getting-started/create-first-bot.md"
  "getting-started/wallets/metamask.md"
  "getting-started/wallets/phantom.md"
  "getting-started/wallets/ledger.md"
  "exchanges/overview.md"
  "exchanges/pacifica.md"
  "exchanges/extended.md"
  "guides/bot-configuration.md"
  "guides/grid-strategy.md"
  "guides/risk-management.md"
  "guides/monitoring.md"
  "guides/troubleshooting.md"
  "guides/security.md"
  "reference/api.md"
  "reference/glossary.md"
  "faq.md"
  "changelog.md"
  "security/audit.md"
  "legal/risk-disclosure.md"
)

{
  echo "# Arbital — Full Documentation"
  echo ""
  echo "> This file contains the complete Arbital documentation for LLM consumption."
  echo "> Source: $BASE_URL"
  echo "> Generated: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo ""

  for page in "${PAGES[@]}"; do
    filepath="$REPO_ROOT/$page"
    if [[ ! -f "$filepath" ]]; then
      echo "WARNING: $page not found, skipping" >&2
      continue
    fi

    # Build URL: README.md → base, others → strip .md
    if [[ "$page" == "README.md" ]]; then
      url="$BASE_URL"
    else
      url="$BASE_URL/${page%.md}"
    fi

    echo "---"
    echo ""
    echo "URL: $url"
    echo "Source: $page"
    echo ""
    cat "$filepath"
    echo ""
    echo ""
  done
} > "$OUTPUT"

# Count pages and size
page_count=${#PAGES[@]}
size=$(wc -c < "$OUTPUT" | tr -d ' ')
echo "Generated $OUTPUT ($page_count pages, ${size} bytes)"
