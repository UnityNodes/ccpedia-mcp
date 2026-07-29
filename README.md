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
confident invention. Everything needed to answer properly is public. It is
just scattered across a dozen sites that no model was trained on, and none of
them can be called by an assistant.

CCPEDIA indexes those sources continuously and exposes them as tools. An
assistant can look up the actual text of a CIP, read what the forum concluded
about it, check whether a vote passed, and cite all of it.

The full live inventory of what is indexed, how many records each source holds
and when each was last synced is published here:

```
https://ccpedia.xyz/api/v1/sources
```

Those numbers live only there. This README does not repeat them on purpose:
a count copied into a readme is out of date by the following week.

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

Questions that used to need someone who had been reading the forum for a year:

- What does CIP-0042 actually say, and what was the objection to it
- Which CIPs are approved but not yet final
- What changed in the last Splice release that affects validators
- Has anyone proposed something like X before
- What did the Foundation decide about Y, and where is that written down
- Which grant proposals are live for a vote right now

## Tools

See [TOOLS.md](TOOLS.md) for the full catalogue, grouped and with arguments.

It is generated from the running server rather than written by hand, so it
cannot fall out of step with what the server actually offers.

## What this repository is, and is not

This repository holds the documentation, client configuration, issue tracker
and discussions for the hosted service.

It does not contain the server code, and it is worth saying why plainly. The
server is tied to the pipeline that builds the index and to the database it
reads. Publishing the request handler on its own would hand you something that
answers nothing. Separating them properly is real work, not a `git push`, so it
is on the list rather than in this commit.

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

Everything in this repository is MIT licensed. Indexed material stays under
the license of whoever wrote it, and CCPEDIA links back to every source.
