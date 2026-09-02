# Autom Skills

Agent skills for the Autom Google Search SERP API, the hosted MCP server, and common Autom workflows.

Compatible with Claude Code, Cursor, Cline, Codex, Windsurf, Gemini, GitHub Copilot, Roo, Goose, Antigravity, and [50+ other agents](https://skills.sh) via the open [`skills`](https://www.npmjs.com/package/skills) CLI.

## Install

Pick the flow that matches what you're shipping:

```bash
# Install every Autom skill into every detected agent
npx skills add automdev/skills --all

# Pick specific skills (use the canonical `--skill <name>` form)
npx skills add automdev/skills --skill autom-autocomplete

# Target specific agents (claude-code, codex, cursor, gemini-cli, ...)
npx skills add automdev/skills --all -a claude-code -a cursor

# Install globally (~/<agent>/skills/) instead of in the current project
npx skills add automdev/skills --all --global

# Just list what's available without installing
npx skills add automdev/skills --list
```

`automdev/skills` is GitHub-shorthand for [`https://github.com/automdev/skills`](https://github.com/automdev/skills); the CLI clones it directly.

## Skills

| Skill | When to use |
|-------|-------------|
| **autom-autocomplete** | Fetch Google Search autocomplete suggestions with Autom. |
| **autom-bing-brave-search** | Search Bing or Brave when the user asks for those engines with Autom. |
| **autom-google-finders** | List Google countries, languages, and locations for Autom SERP parameters. |
| **autom-image-search** | Search Google Images with Autom. |
| **autom-jobs-search** | Search Google Jobs listings with Autom. |
| **autom-maps-search** | Look up places with Autom Google Maps tools. |
| **autom-news-search** | Fetch recent news headlines with Autom Google News tools. |
| **autom-search-light** | Run the cheaper Google Search Light path with Autom. |
| **autom-shopping-search** | Search Google Shopping offers with Autom. |
| **autom-videos-search** | Search Google Videos with Autom. |
| **autom-web-search** | Run Autom Google Search and related SERP endpoints for organic results. |

## Setup

Run Google Search, News, Images, Maps, Shopping, Jobs, Videos, and autocomplete, plus Bing and Brave, and get structured SERP results.

1. Create an account at [app.autom.dev](https://app.autom.dev).
2. Connect the hosted MCP server at `https://mcp.autom.dev/` (OAuth through the dashboard).
3. API calls can also use an `x-api-key` header from the dashboard. Never print API keys.

Docs: [docs.autom.dev](https://docs.autom.dev)

## Updating and removing

```bash
# Pull the latest version of every installed Autom skill
npx skills update

# Remove a specific skill
npx skills remove autom-autocomplete

# Remove every Autom skill from a specific agent
npx skills remove --skill 'autom-*' -a claude-code
```

## Where skills land

`npx skills` symlinks the skills into each agent's conventional directory. A few examples:

| Agent | Project install | Global install |
|-------|-----------------|----------------|
| Claude Code | `.claude/skills/` | `~/.claude/skills/` |
| Codex | `.agents/skills/` | `~/.codex/skills/` |
| Cursor | `.agents/skills/` | `~/.cursor/skills/` |
| Gemini CLI | `.agents/skills/` | `~/.gemini/skills/` |
| OpenCode | `.agents/skills/` | `~/.config/opencode/skills/` |

Full agent matrix: see the [`skills` package README](https://www.npmjs.com/package/skills).

---

A [WebAPI Group](https://webapi.group/) product.
