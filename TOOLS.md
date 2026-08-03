# Tool catalogue

This file is generated from the running server by `build-mcp-repo-docs.ts`.
Do not edit it by hand, and do not copy the numbers below into other files:
regenerate instead.

**88 tools**, of which 87 are read only.

Every tool is callable over the hosted endpoint without an API key. See the
README for how to connect.

## Search and discovery

16 tools.

| Tool | What it does | Arguments |
| --- | --- | --- |
| `find_apps_by_pattern` | Pattern-search the Featured Apps catalogue by free-text query across name, category, and description. | `pattern`*, `limit` |
| `find_cip_for_feature` | Given a Canton feature or capability description, find the matching CIP(s) by searching titles and bodies. | `feature`* |
| `find_code_examples` | Find Canton/Daml code snippets in forum posts on a topic. | `topic`*, `limit` |
| `find_collaboration_opportunities` | Given one Canton ecosystem project, find others with complementary tags/category that could plug in. | `project`* |
| `find_expert` | Rank likely Canton experts on a topic across CCPEDIA: forum activity matching the topic, plus overall forum/GitHub volume of that author. | `topic`*, `limit` |
| `find_known_issues` | Surface known UNRESOLVED problems matching a free-text description: forum threads with zero replies but high views, plus open GitHub issues. | `description`*, `limit` |
| `find_maintainer_guidance` | Surface forum/mailing posts authored by top-volume Canton contributors (likely maintainers) on a topic. | `topic`* |
| `find_security_patches` | Surface release notes likely to contain security or CVE fixes. | `limit` |
| `find_similar_projects` | Find Canton ecosystem projects most similar to a free-text description by matching across title + category + description + tags: searches only the live ecosystem direc... | `description`*, `limit` |
| `search` | Keyword/full-text search over the Canton Network knowledge base (CIPs, Canton/Daml/Splice docs, forum, mailing lists, whitepapers, grant proposals, blog, YouTube, GitH... | `query`*, `type`, `limit` |
| `search_community` | One-call semantic-style search across CCPEDIA's community sources at once: forum, mailing lists, blog, and GitHub discussions. | `query`*, `limit` |
| `search_github_issues` | Full-text search across CCPEDIA's indexed GitHub issues (15+ Canton repos). | `query`*, `state`, `limit` |
| `search_mailing_list` | Search across CCPEDIA's indexed Canton mailing-list archives (cip-discuss, cip-vote, grants-discuss, validator-announce, etc). | `query`*, `group`, `limit` |
| `search_release_notes` | Search across release-notes bodies of all indexed Canton repos for a feature/keyword. | `feature`* |
| `search_talks` | Search CCPEDIA's indexed Canton talks/videos (YouTube transcripts). | `query`*, `limit` |
| `semantic_search` | PRIMARY tool for open-ended questions: how / why / what-is, troubleshooting a symptom ("why is my balance zero", "how do I fix X"), and locating config or setup steps. | `query`*, `source_types`, `limit` |

Arguments marked with `*` are required.

## CIPs and governance

17 tools.

| Tool | What it does | Arguments |
| --- | --- | --- |
| `compare_governance_outcomes` | Aggregate governance throughput over a window: CIPs that changed status (approved / rejected / advanced), counts of cip-vote and cip-discuss mailing activity, and dev-... | `window_days`* |
| `detect_cip_dependency_chain` | Walk the CIP `requires:` graph from a starting CIP or PR draft. | `cip_id`* |
| `get_cip` | Fetch the full markdown body of a single Canton Improvement Proposal (CIP) by its ID (e.g. "CIP-0042", "0042", "PR-0117"). | `id`* |
| `get_cip_attachments` | List file/PDF attachments linked to a single Canton Improvement Proposal (CIP): supporting docs and signed-vote-record PDFs, with filenames and URLs. | `id`* |
| `get_cip_citations` | Comprehensive citation graph for a Canton Improvement Proposal (CIP): every place across CCPEDIA's corpus that references CIP-N. | `cip_id`* |
| `get_cip_history` | Get the status-transition timeline of a single Canton Improvement Proposal (CIP): each dated from->to change (e.g. | `id`* |
| `get_cip_implementation_status` | For one CIP, report whether code/grants are tracking the proposal: linked dev-fund PRs, related ecosystem projects, status transitions. | `cip_number`* |
| `get_cip_mentions` | Find every place that references a given Canton Improvement Proposal (CIP): forum threads, mailing-list posts, blog articles, Dev Fund grant proposals, and sibling CIP... | `id`* |
| `get_cip_vote_outcome` | Find out whether a Canton Improvement Proposal (CIP) was actually acted on ON CHAIN, and how. | `cip_id`* |
| `get_cip_votes` | Get the formal vote tally (in-favor / against / abstain, one entry per recorded vote) for a specific Canton Improvement Proposal (CIP), sourced from the Canton cip-vot... | `cip_id`* |
| `get_governance_vote` | Get the full detail of one Canton on-chain DSO governance vote request: the proposed action, the requester's stated reason, every Super Validator's individual vote wit... | `tracking_cid`* |
| `get_proposal_milestones` | For one Canton Dev Fund proposal PR, list any related milestone tracking issues (issues whose body or title references the PR number). | `pr_number`* |
| `get_proposals` | List Canton Network Dev Fund grant proposals: community funding requests tracked on GitHub. | `state`, `limit` |
| `list_cips` | Browse Canton Improvement Proposals (CIPs), optionally filtered by status (Draft, Early Draft, In Review, Proposed, Approved, Active, Final, Withdrawn, Rejected, Repla... | `status`, `type`, `limit` |
| `list_governance_votes` | List Canton Network on-chain DSO governance vote requests and their outcomes, from the ledger itself. | `limit`, `action`, `outcome`, `status` |
| `list_votes_by_sv` | Get the on-chain voting record of Canton Super Validators: how many DSO governance votes each has cast, how often they voted for or against, how often they abstained, ... | `sv_name` |
| `proposal_success_predictor` | Heuristic readiness score for a Dev Fund proposal draft, based on attributes that correlate with approval in the historical corpus: explicit milestones, code/PoC refer... | `draft_text`* |

Arguments marked with `*` are required.

## Documentation and specs

4 tools.

| Tool | What it does | Arguments |
| --- | --- | --- |
| `get_doc` | Fetch the FULL text of one indexed Canton-ecosystem documentation page (Canton/Daml/Splice and integrated partner docs) by its numeric id. | `id`* |
| `get_sdk_changelog` | Fetch the release-notes body for one SDK version across canton / daml / dpm / decentralized-canton-sync (Splice). | `version`*, `repo` |
| `get_whitepaper` | Get the full extracted text of a specific Canton Network whitepaper by slug (e.g. 'canton-network-whitepaper'): title, tag, page count, PDF link, and body text (up to ... | `slug`* |
| `list_whitepapers` | List every Canton Network whitepaper indexed by CCPEDIA, returning slug, title, description, tag and page count (metadata only, no body). | none |

Arguments marked with `*` are required.

## Community and discussion

5 tools.

| Tool | What it does | Arguments |
| --- | --- | --- |
| `get_discussion` | Get a single thread from the official Canton Network community forum (Discourse at forum-style discussions on ccpedia.xyz) by numeric topic id: title, category, view/p... | `id`* |
| `get_github_discussion` | Get the full body and comments of a single GitHub Discussion from a Canton Network repo (e.g. canton-foundation/docs), by its GitHub GraphQL node id (from list_github_... | `id`* |
| `get_mailing_thread` | Get every message (oldest first) in a specific Canton Network governance mailing-list thread on lists.sync.global (cip-discuss, cip-vote, grants-discuss, etc.). | `id`* |
| `list_github_discussions` | List GitHub Discussions from Canton Network repositories (currently canton-foundation/docs) cached by CCPEDIA, sorted by upvotes then recency. | `repo`, `category`, `limit` |
| `list_mailing_threads` | List threads from the Canton Network governance mailing lists (lists.sync.global groups: cip-discuss, cip-vote, cip-announce, globalSyncForum, grants-discuss, validato... | `group`, `cip_id`, `since`, `limit`, `offset` |

Arguments marked with `*` are required.

## Network and ecosystem data

8 tools.

| Tool | What it does | Arguments |
| --- | --- | --- |
| `ecosystem_dependency_graph` | Map ecosystem_projects matching a topic to the SDK versions and repos they appear alongside, building a quick dependency picture. | `topic`* |
| `get_ecosystem_gaps` | Surface ecosystem gaps: high-view forum threads with zero replies (unanswered demand), recent unanswered mailing threads, and Dev Fund categories with few accepted pro... | `limit` |
| `get_network_state` | Get the latest Canton Network ON-CHAIN state snapshot from the public Scan API (api.cantonnodes.com): Super Validator list & count, voting threshold, sequencer count, ... | none |
| `get_network_stats` | Get CCPEDIA's CONTENT-CATALOG metrics: how many Canton items CCPEDIA has indexed. | none |
| `get_token_market` | Get the latest cached market snapshot for CANTON COIN (CC) ONLY: USD price, 24h change, market cap, 24h volume, total Canton DeFi TVL, and per-protocol TVL on Canton. | none |
| `get_validator` | Look up an individual Canton validator node in the DSO registry by name or party id: its sponsor, self-reported Splice version and how stale that report is, when it wa... | `name`*, `limit` |
| `get_validator_fleet` | Where do you stand versus other Canton operators on your Splice version? | `version` |
| `list_ecosystem_projects` | List Canton Network ecosystem projects (DeFi protocols, wallets, custody, infrastructure, NaaS, etc.) from the curated canton.wiki catalog. | `category`, `query`, `limit` |

Arguments marked with `*` are required.

## Releases and changes

4 tools.

| Tool | What it does | Arguments |
| --- | --- | --- |
| `detect_drift` | Find contradictions between docs, forum and GitHub on a topic. | `topic`* |
| `get_kb_drift` | Report where the Foundation Build-on-Canton KB snapshot (which CCPEDIA syncs daily from github.com/canton-network-devs/Build-on-Canton-MCP) diverges from CCPEDIA's liv... | `refresh` |
| `get_latest_release` | Get the single latest release (version tag, publish date, and GitHub release-notes link) for ONE NAMED Canton-ecosystem package: canton, daml, dpm, or splice. | `package`* |
| `get_upgrade_status` | Upgrade Copilot for a Canton validator: given the Splice version a node runs and its network, report whether it is below the minimum in force, how many releases behind... | `environment`*, `version` |

Arguments marked with `*` are required.

## Other

34 tools.

| Tool | What it does | Arguments |
| --- | --- | --- |
| `call_canton_mcp` | Federate a tool call to another Canton MCP server (see list_canton_mcps). | `server`*, `tool`*, `arguments` |
| `check_deprecation` | Check whether a specific Canton/Daml toolchain item (CLI, SDK package, or command: e.g. daml-assistant, Navigator, dpm) is deprecated. | `name`* |
| `community_consensus` | Surface signals of what the Canton community thinks about a topic: forum thread reply ratios, mailing list debate volume, and the highest-rated reply on the most-viewe... | `topic`* |
| `compare_to_evm` | Map one Ethereum/EVM concept (e.g. smart contract, wallet, gas, ERC20, Hardhat, ABI) to its Canton Network equivalent, for developers migrating from Solidity/EVM to Ca... | `concept`* |
| `detect_builder_overlap` | Given a project/proposal idea, find existing Canton ecosystem projects + dev-fund proposals that look similar: across BOTH the canton-dev-fund proposals corpus AND eco... | `idea`* |
| `diagnose_error` | Paste a Canton/Daml/Splice ERROR MESSAGE, stack trace, or error code and get the most likely resolved fixes from CCPEDIA history: forum threads where the same error wa... | `error_text`*, `limit` |
| `full_context` | Single free-text query across CCPEDIA's entire corpus at once: docs, CIPs, forum, mailing, GitHub items, blog, videos, whitepapers, ecosystem projects. | `topic`*, `limit_per_source` |
| `get_api_reference` | Get a structured reference (ports, endpoints, services, links) for one specific Canton Network API: JSON Ledger API, gRPC Ledger API, Scan API, Validator API, Token St... | `api`* |
| `get_app_metrics` | Fetch metrics for one specific Featured App by its app_id (contract id from the Scan API). | `app_id`* |
| `get_breaking_changes` | Compare two Canton/Daml/Splice SDK versions and return the list of changes between them: release notes from github_releases plus any forum/GitHub reports near the rele... | `from_sdk`*, `to_sdk`*, `repo` |
| `get_current_versions` | Get the freshest Canton SDK, Splice, Daml, and DPM versions ALL AT ONCE, plus per-network Splice deployment status (DevNet / TestNet / MainNet) and any upcoming synchr... | none |
| `get_faq` | Look up answers in the Canton Network developer FAQ (Canton Foundation curated, hackathon-tested): Canton/Daml installation, party creation, Daml contracts, Ledger/Sca... | `question`* |
| `get_foundation_info` | Retrieve official Canton Foundation pages (canton.foundation): team and board bios, working groups, membership process, grants program. | `topic`*, `limit` |
| `get_funding_landscape` | Overview of the Canton Dev Fund: counts of proposals by state and label, top categories, and recent activity. | `category` |
| `get_issue_status` | Look up one GitHub issue or PR by repo + number. | `repo`*, `number`* |
| `get_npm_packages` | List the indexed Canton/Daml npm packages (sdk_versions registry=npm) optionally filtered by name. | `query`, `limit` |
| `get_radar` | Get the Canton Network Radar, CCPEDIA's curated feed of time-sensitive ecosystem alerts: breaking changes, upgrade deadlines, protocol migrations and required validato... | `level` |
| `get_recent_changes` | Get a chronological (newest-first) feed of recent Canton Network activity: CIP status changes, new grant proposals, new forum threads, blog posts, GitHub releases, and... | `days`, `limit` |
| `get_recent_deployments` | Recent completed SV deployments/releases from sv_operations_calendar (operation_type in deploy\|release\|upgrade), cross-referenced with github_releases when the title n... | `limit` |
| `get_recurring_issue_fingerprint` | Identify error patterns that recur across multiple Canton SDK or Splice release windows: structural bugs the ecosystem keeps hitting versus one-off regressions. | `window_months`, `min_months` |
| `get_started_guide` | Generate a personalized Canton Network developer onboarding/quickstart path. | `background`* |
| `get_sv_schedule` | Show the Super Validator operations schedule from the Canton Foundation's sv-cal.canton.foundation feed: planned releases, deploys, upgrades, governance windows, freezes. | `environment`, `upcoming_only`, `limit` |
| `get_trending` | Get this week's most popular/trending Canton Network content (CIPs, forum threads, docs, blog, etc.) ranked by an engagement score. | none |
| `get_upcoming_deadlines` | Canton operational deadlines coming up: scheduled upgrades, minimum-version raises, topology freezes and Logical Synchronizer Upgrades, per network. | `environment`, `days`, `validator_only` |
| `get_upcoming_operations` | Convenience wrapper: SV operations in the next N days, all environments, all operation types. | `days`* |
| `get_video` | Get a Canton Network video that CCPEDIA has cached (curated channels: Canton Network, Digital Asset, Sync Insights, Canton Foundation, Daml) by its YouTube id: title, ... | `id`* |
| `learning_path` | Construct a structured Canton onboarding sequence for a stated goal: whitepaper → relevant docs → CIPs to know → forum starter threads → talks. | `goal`* |
| `list_canton_mcps` | List the Canton Network MCP servers CCPEDIA knows about: a directory of the Canton MCP ecosystem (payments, wallets, docs, knowledge). | none |
| `list_deprecations` | List all known deprecated Daml/Canton CLI commands, packages, and tools with their modern replacements. | `category` |
| `list_featured_apps` | List Canton Network Featured Apps from the live Scan-API-sourced catalogue. | `category`, `sort`, `limit` |
| `list_repos` | List the Canton Network GitHub repositories that CCPEDIA has indexed (Canton org repos such as canton-foundation and Daml/Splice, excluding the dev-fund proposals repo... | none |
| `list_videos` | List Canton Network videos cached in CCPEDIA, filtered by channel (Canton Network, Digital Asset, Sync Insights, Canton Foundation, Daml), publish date (since), and tr... | `channel`, `since`, `has_transcript`, `limit`, `offset` |
| `migrate_lookup` | Look up the modern replacement for a deprecated Daml/Canton CLI command, npm package, or tool (e.g. "daml start", "@daml/ledger", "Navigator", "Daml Triggers", "splice... | `query`* |
| `outdated_guidance_detector` | Surface CCPEDIA content that mentions deprecated Canton/Daml tooling alongside the user's query: likely outdated. | `query`* |

Arguments marked with `*` are required.
