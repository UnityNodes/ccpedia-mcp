# CCPEDIA MCP

An MCP server that gives AI assistants direct, cited access to the Canton
Network's public record: improvement proposals, documentation, forum threads,
mailing lists, whitepapers, grant proposals, releases and on-chain governance.

Hosted and free to use. No API key, no signup, read only.

```
https://ccpedia.xyz/mcp
```

## Why this exists

Ask any assistant a specific Canton question today and you get one of three
answers: a refusal, a generic blockchain answer that is not about Canton, or a
confident invention. The material to answer properly is public, but it is spread
across a dozen places that no model was trained on and none of which speak a
protocol an agent can call.

CCPEDIA indexes those sources continuously and exposes them as tools. An
assistant can look up the actual text of a CIP, read what the forum concluded
about it, check whether a vote passed, and cite all of it.

The full live inventory of what is indexed, how many records each source holds
and when each was last synced is published here:

```
https://ccpedia.xyz/api/v1/sources
```

That endpoint is the single source of truth for those numbers. This README
deliberately does not repeat them, because a number copied into a readme is
wrong by the following week.

## Connect

### Claude Code

```bash
claude mcp add --transport http ccpedia https://ccpedia.xyz/mcp
```

### Claude Desktop, Cursor, and other clients that read a config file

```json
{
  "mcpServers": {
    "ccpedia": {
      "type": "http",
      "url": "https://ccpedia.xyz/mcp"
    }
  }
}
```

Ready made files for each client are in [`examples/`](examples/).

### Anything else

Streamable HTTP transport, protocol version `2024-11-05`. Standard MCP
`initialize` then `tools/list`. Nothing custom.

## What it can answer

Questions that previously needed a human who had been reading the forum for a
year:

- What does CIP-0042 actually say, and what was the objection to it
- Which CIPs are approved but not yet final
- What changed in the last Splice release that affects validators
- Has anyone proposed something like X before
- What did the Foundation decide about Y, and where is that written down
- Which grant proposals are live for a vote right now

## Tools

See [TOOLS.md](TOOLS.md) for the full catalogue, grouped and with arguments.

That file is generated from the running server, not written by hand, so it
cannot drift out of sync with what the server actually offers.

## What this repository is, and is not

This repository holds the documentation, client configuration, issue tracker
and discussions for the hosted service.

It does not currently contain the server implementation. Being straight about
why: the server is meaningfully coupled to the indexing pipeline and the
database behind it, and publishing the request handler without the corpus would
give you a shell that answers nothing. Opening it properly means separating
those, which is real work rather than a `git push`. It is on the roadmap, not in
this commit.

If you want to run your own instance today, the same corpus is available over a
plain REST API, documented at `https://ccpedia.xyz/api/v1`.

## Feedback and requests

- **Discussions** for questions, ideas, and "could it also do X"
- **Issues** for bugs, wrong answers, and corrections to indexed data

A wrong or missing answer is the most useful thing you can report. Include the
question you asked and the tool the assistant called, if you can see it.

## Related

- [ccpedia.xyz](https://ccpedia.xyz) the site
- [ccpedia.xyz/ask](https://ccpedia.xyz/ask) the same corpus as a chat agent
- [ccpedia.xyz/api/v1](https://ccpedia.xyz/api/v1) REST API for non-agent clients

## License

The contents of this repository are MIT licensed. Indexed material remains under
the license of whoever wrote it; CCPEDIA links back to every source.
