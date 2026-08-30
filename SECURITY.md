# Security

## Reporting a vulnerability

Email security@unitynodes.com. For non-security questions, use the
[contact form](https://ccpedia.xyz/contact) instead.

Include reproduction steps, the affected tool or endpoint, your client
(browser or MCP client and version), and any logs you have. If the issue is
sensitive, request a PGP key in your first message and we will respond
out of band.

Please do not open a public issue for a vulnerability. Issues in this
repository are for wrong or missing answers, not security reports.

## Response timeline

- **72h**: initial acknowledgement.
- **7d**: severity assessment and a patch plan, or a documented risk
  acceptance.
- **30d**: public disclosure once a fix is deployed, unless you prefer
  earlier.

## Scope

**In scope**

- The hosted MCP endpoint at `https://ccpedia.xyz/mcp`: tool-poisoning,
  prompt injection through tool results that exfiltrates data or hidden
  context, auth or rate-limit bypass, and any tool response that leaks
  data outside its documented scope.
- The `/api/v1/*` REST API this server sits alongside.

**Out of scope**

- Rate-limit volume tests and denial-of-service against the hosted
  endpoint.
- Issues only reproducible with a custom MCP client that ignores the
  protocol or modifies request signing.
- Reports based on missing security headers without a concrete exploit.
- Third-party services CCPEDIA depends on for embeddings or inference;
  report those upstream to the provider.

The full policy for the rest of ccpedia.xyz, including the web app and
chat surfaces, is at [ccpedia.xyz/security](https://ccpedia.xyz/security).
