# MultiStats

> **📦 This repo has merged into [`PsychQuant/logos`](https://github.com/PsychQuant/logos)** (change `merge-multistats-into-logos`, 2026-07-03). The code now lives there as the `LogosAccounts` / `LogosUsage` targets plus a thin `MultiStats` executable — build the standalone viewer from the logos repo with `swift run MultiStats`. Git history was merged in full, and open issues were transferred ([logos#51](https://github.com/PsychQuant/logos/issues/51), [logos#52](https://github.com/PsychQuant/logos/issues/52), [logos#53](https://github.com/PsychQuant/logos/issues/53)). This repo is archived and read-only.

> Native macOS app that shows Claude Code usage stats (`/usage`) for **multiple accounts** side by side — session cost, plan usage, and activity stats in one window.

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
