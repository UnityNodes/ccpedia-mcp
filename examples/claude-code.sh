#!/usr/bin/env bash
# Add CCPEDIA to Claude Code. No API key is needed.
claude mcp add --transport http ccpedia https://ccpedia.xyz/mcp

# Verify it connected and see the tool list:
#   claude mcp list
