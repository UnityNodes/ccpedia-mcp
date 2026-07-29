#!/usr/bin/env bash
# Talk to the server directly, without an MCP client.
# Streamable HTTP transport, protocol 2024-11-05. Responses come back as SSE frames.
set -euo pipefail
URL=https://ccpedia.xyz/mcp

SID=$(curl -s -D - -o /dev/null -X POST "$URL" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/event-stream' \
  -d '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{"protocolVersion":"2024-11-05","capabilities":{},"clientInfo":{"name":"curl","version":"1.0"}}}' \
  | tr -d '\r' | awk '/^[Mm]cp-[Ss]ession-[Ii]d:/ {print $2}')

curl -s -X POST "$URL" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/event-stream' \
  -H "mcp-session-id: $SID" \
  -d '{"jsonrpc":"2.0","id":2,"method":"tools/list","params":{}}'
