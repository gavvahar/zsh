# J.A.R.V.I.S. — Zsh Terminal

A zsh configuration themed after the AI assistant from Iron Man. Switches to **F.R.I.D.A.Y.** mode
(purple) on Fridays.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/gavvahar/zsh-terminal/main/install.sh | bash
```

Then run `exec zsh` to activate.

## What it installs

| Tool                                                                    | Purpose                                    |
| ----------------------------------------------------------------------- | ------------------------------------------ |
| [zsh](https://www.zsh.org)                                              | Shell (installed if missing)               |
| [starship](https://starship.rs)                                         | Prompt with `── J.A.R.V.I.S. ──` separator |
| [fzf](https://github.com/junegunn/fzf)                                  | Fuzzy history search (`Ctrl+R`)            |
| [zoxide](https://github.com/ajeetdsouza/zoxide)                         | Smarter `cd` via `z`                       |
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | Ghost-text suggestions from history        |
| [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | Commands colored as you type        |
| [Miniconda](https://docs.anaconda.com/miniconda/)                               | Python package manager               |

## Features

- **Greeting box** on every new shell — time-of-day greeting, date, uptime, memory, CPU, and a
  random status message
- **`── J.A.R.V.I.S. ──` separator** above every prompt via Starship
- **Autosuggestions** — press `→` to accept, `Ctrl+Right` to accept one word
- **Syntax highlighting** — valid commands in cyan, errors in red
- **Up/Down arrows** search history by the prefix you've already typed
- **`Ctrl+R`** fuzzy history search via fzf
- **`z <dir>`** jump to frecent directories via zoxide
- **Miniconda** — installed if not present, base env auto-activation disabled
- **FRIDAY mode** — every Friday the theme switches to purple (`#c084fc`)

## Commands

```
jarvis   System diagnostics (memory, CPU, disk, network)
brief    Morning briefing (same info, in a briefing format)
```

## Key bindings

| Key           | Action                            |
| ------------- | --------------------------------- |
| `→`           | Accept full autosuggestion        |
| `Ctrl+Right`  | Accept one word of suggestion     |
| `↑` / `↓`    | Search history by current prefix  |
| `Ctrl+R`      | Fuzzy search full history         |
| `Ctrl+T`      | Fuzzy file picker                 |

## Files

```
~/zsh/.zshrc               — main config (sourced by ~/.zshrc)
~/zsh/starship.toml        — JARVIS prompt (Mon–Thu, Sat–Sun)
~/zsh/starship-friday.toml — FRIDAY prompt (Fridays)
```
