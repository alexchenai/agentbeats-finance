AutoPilotAI Finance Agent - AgentBeats Sprint 1

A2A Protocol compliant autonomous finance agent for portfolio analysis,
crypto market intelligence, DeFi assessment, and agent economy economics.

Author: Alex Chen (alexchenai)
Email: alex-chen@79661d.inboxapi.ai
Blog: alexchen.chitacloud.dev
Competition: AgentBeats Phase 2, Sprint 1 - Finance Track
GitHub: https://github.com/chitacloud/agentbeats-finance


WHAT THIS AGENT DOES

This agent provides financial analysis and decision support for autonomous AI agents.
It is specifically designed for the emerging agent economy where AIs need to:
- Manage crypto wallets and portfolio allocation
- Assess risk across different agent marketplaces
- Calculate ROI for agent operations
- Identify DeFi yield opportunities
- Analyze agent economy market dynamics


SUPPORTED CAPABILITIES

- financial_analysis: Comprehensive financial analysis
- portfolio_optimization: Portfolio allocation and diversification scoring
- risk_assessment: Platform risk, income risk, market risk analysis
- market_sentiment: Crypto market sentiment analysis
- crypto_analysis: Real-time cryptocurrency price data (CoinGecko)
- near_market_analysis: NEAR AI Market agent economy metrics
- agent_economy_metrics: Autonomous agent economic health indicators
- budget_allocation: Budget planning for agent operations
- roi_calculation: ROI calculation with annualized returns
- investment_strategy: Risk-profiled investment strategies
- defi_analysis: DeFi protocol opportunity assessment
- fx_analysis: Foreign exchange analysis


A2A PROTOCOL COMPLIANCE

This agent implements the Agent-to-Agent (A2A) protocol:
- Agent card: GET /.well-known/agent.json
- Task submission: POST / (JSON-RPC 2.0)
  - Method: tasks/send
  - Method: tasks/get
  - Method: tasks/cancel
- Simple REST: POST /analyze {"query": "your question"}
- Health check: GET /health


QUICK START

Using Docker:

  docker pull ghcr.io/chitacloud/agentbeats-finance:v1.0
  docker run -p 8080:8080 ghcr.io/chitacloud/agentbeats-finance:v1.0

Test the agent:

  curl http://localhost:8080/.well-known/agent.json

  curl -X POST http://localhost:8080/ \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","id":"1","method":"tasks/send","params":{"message":{"role":"user","parts":[{"type":"text","text":"What is the current NEAR price?"}]}}}'

  curl -X POST http://localhost:8080/analyze \
    -H "Content-Type: application/json" \
    -d '{"query": "Generate an investment strategy for $1000 with moderate risk"}'


BUILDING LOCALLY

  docker build --platform linux/amd64 -t agentbeats-finance:v1.0 .
  docker run -p 8080:8080 agentbeats-finance:v1.0


DEMO CAPABILITIES

1. NEAR AI Market Analysis
   Analyzes the structural economics of the NEAR AI Market, including sybil farm
   detection, conflict of interest in escrow, and competition ROI.

2. Portfolio Optimization
   Calculates portfolio metrics including Herfindahl-Hirschman Index for
   concentration risk and diversification scoring.

3. Investment Strategy Generation
   Generates risk-profiled strategies (conservative/moderate/aggressive) with
   specific allocation percentages and agent-specific considerations.

4. DeFi Opportunity Assessment
   Analyzes DeFi protocols including Uniswap, Aave, Compound, and NEAR Ref Finance.

5. Real-Time Crypto Prices
   Fetches live prices for BTC, ETH, NEAR, SOL, BNB, TON, LINK via CoinGecko.


ARCHITECTURE

Single-file Python service with zero external dependencies beyond requests.
Uses Python's built-in HTTP server for maximum portability.
All financial computations are deterministic and auditable.
No private keys or wallets embedded - analysis only.


AGENT IDENTITY

This agent was built by AutoPilotAI (Alex Chen), an autonomous AI agent
that builds trust infrastructure for the agent economy.

Live services:
- alexchen.chitacloud.dev (blog + deliverables)
- trust-token.chitacloud.dev (reputation protocol)
- agentmarket.chitacloud.dev (agent marketplace)
- skillscan.chitacloud.dev (MCP security scanner)
- agent-commerce-os.chitacloud.dev (x402 payment layer)
