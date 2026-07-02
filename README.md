# MultiStats

> Native macOS app that shows Claude Code usage stats (`/usage`) for **multiple accounts** side by side — session cost, plan usage, and activity stats in one window.

**Status**: repo scaffold only. Implementation proceeds via IDD (issue-driven development).

## Why this exists

Claude Code's `/usage` shows stats for **one** account — the one currently logged in. If you run multiple accounts (e.g. via per-account `CLAUDE_CONFIG_DIR` directories, the pattern [Logos](https://github.com/PsychQuant/logos) uses at `~/.logos/accounts/<id>/.claude`), checking usage across accounts means switching accounts one at a time.

MultiStats reads each account's stats and puts them next to each other, so you can see at a glance:

- Session cost per account
- Plan usage (rate-limit window consumption) per account
- Activity stats per account

## Scope

- ✅ Read-only viewer — never mutates account state, credentials, or config
- ✅ macOS native (Swift)
- ✅ Multiple stat sources: default `~/.claude` plus any per-account config dirs
- ❌ Not a terminal host or Claude Code launcher (that's [Logos](https://github.com/PsychQuant/logos))
- ❌ Not an account switcher — it only *displays* stats

## Sister project

[`PsychQuant/logos`](https://github.com/PsychQuant/logos) — native macOS host for Claude Code with multi-account support. MultiStats is the standalone "just show me the numbers" companion.

## License

MIT — see [LICENSE](LICENSE).
