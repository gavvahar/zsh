# ─── Completions ──────────────────────────────────────────────────────────────
autoload -Uz compinit && compinit

zstyle ':completion:*' menu select                          # arrow-key menu
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'  # case-insensitive
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"     # colored completions
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' rehash true                          # pick up new commands instantly

# ─── History ──────────────────────────────────────────────────────────────────
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt SHARE_HISTORY        # sync history across sessions
setopt HIST_IGNORE_DUPS     # skip duplicate consecutive commands
setopt HIST_IGNORE_SPACE    # skip commands prefixed with a space
setopt HIST_VERIFY          # show substitution before running

# ─── Options ──────────────────────────────────────────────────────────────────
setopt AUTO_CD              # type a directory name to cd into it
setopt AUTO_PUSHD           # cd pushes old dir onto the stack
setopt PUSHD_IGNORE_DUPS    # no duplicate dirs in the stack
setopt INTERACTIVE_COMMENTS # allow # comments in interactive shell

# ─── Syntax highlighting ──────────────────────────────────────────────────────
# must be sourced before autosuggestions
source ~/.local/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ─── Autosuggestions ──────────────────────────────────────────────────────────
source ~/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'  # subtle gray ghost text

# ─── Key bindings ─────────────────────────────────────────────────────────────
bindkey '^[[A' history-beginning-search-backward  # Up: search by typed prefix
bindkey '^[[B' history-beginning-search-forward   # Down: search by typed prefix
bindkey '^[[1;5C' forward-word                    # Ctrl+Right: accept one word of suggestion
bindkey '^[[1;5D' backward-word                   # Ctrl+Left: move back one word
bindkey '^[^[[C' forward-word                     # Alt+Right (fallback)
bindkey '^[^[[D' backward-word                    # Alt+Left (fallback)

# ─── fzf (Ctrl+R history search, Ctrl+T file picker) ─────────────────────────
source ~/.fzf/shell/key-bindings.zsh
source ~/.fzf/shell/completion.zsh
export FZF_DEFAULT_OPTS='--height=40% --layout=reverse --border'
export FZF_CTRL_R_OPTS='--sort --exact'

# ─── Prompt (Starship) ────────────────────────────────────────────────────────
eval "$(starship init zsh)"
