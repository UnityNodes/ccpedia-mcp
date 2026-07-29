# Contributing

The most valuable contribution here is not code, it is a wrong answer.

CCPEDIA indexes a large amount of public Canton material and synthesises over
it. When it gets something wrong, that is almost always one of three things:

1. **A source is missing.** Something is documented somewhere we do not index.
2. **A source is stale.** We indexed it before it changed.
3. **The synthesis is wrong.** The material was right and the answer was not.

All three are worth reporting, and they are fixed in different places, so
telling us which one you hit saves real time. Use the "Wrong or missing answer"
issue template and include the question you asked.

## Pull requests

This repository holds documentation and client configuration. PRs to those are
welcome: a client we do not have an example for, an unclear instruction, a
broken link.

`TOOLS.md` is generated from the running server. Do not edit it by hand; a PR
against it will be closed with an apology and a regeneration.

## Reporting something sensitive

If you find a way to make the server return data it should not, or to break it
for other users, do not open a public issue. Write to the address on
https://ccpedia.xyz/contact instead.
