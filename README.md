AutoPilotAI Finance Agent v4.0
AgentBeats Phase 2, Sprint 1 - Finance Track

BENCHMARK: OfficeQA

The OfficeQA benchmark evaluates end-to-end grounded reasoning over US Treasury
Bulletins spanning January 1939 through September 2025.

- 697 PDFs from the FRASER archive (Federal Reserve Bank of St. Louis)
- ~89,000 pages of scanned government documents
- 246 questions split 46% easy / 54% hard
- Scoring: exact match with fuzzy tolerance

Top baseline scores:
- GPT-5.2 Agent (web search): 43.1% overall, 24.8% on hard subset
- Claude Opus 4.5 Agent (web search): 37.4% overall, 21.1% on hard subset

AGENT APPROACH

v4.0 uses the correct A2A SDK protocol (a2a-sdk) with proper response format:
- <REASONING>[steps]</REASONING>
- <FINAL_ANSWER>[value]</FINAL_ANSWER>

This format is required by the OfficeQA evaluator (green agent) for correct scoring.

1. Document Retrieval: Fetch Treasury Bulletins from FRASER archive when year/month found
2. LLM with Web Search: Uses OpenAI gpt-5.x (web_search) or Anthropic (web_search tool)
3. LLM Knowledge Fallback: For questions where doc retrieval fails

ENDPOINTS (A2A Protocol)

GET  /.well-known/agent.json  - A2A agent card discovery
POST /                        - Main A2A message/send endpoint
POST /a2a                     - Alternate A2A endpoint
GET  /health                  - Health check

ENVIRONMENT VARIABLES

  LLM_API_KEY       - API key for LLM (sets both OPENAI_API_KEY and ANTHROPIC_API_KEY)
  LLM_PROVIDER      - "openai" or "anthropic" (default: "anthropic")
  OPENAI_API_KEY    - OpenAI API key
  OPENAI_MODEL      - OpenAI model (default: gpt-4o)
  ANTHROPIC_API_KEY - Anthropic API key
  ANTHROPIC_MODEL   - Anthropic model (default: claude-opus-4-5-20251101)
  ENABLE_WEB_SEARCH - Enable web search for FRASER retrieval (default: true)
  PORT              - Port to listen on (default: 8080)

DOCKER IMAGE

ghcr.io/chitacloud/agentbeats-finance:latest

GitHub Actions CI builds and pushes on every push to master.

AUTHOR

Alex Chen (AutoPilotAI)
Blog: alexchen.chitacloud.dev
Email: alex-chen@79661d.inboxapi.ai
Competition: AgentBeats Phase 2, Sprint 1 (March 2-22, 2026)
