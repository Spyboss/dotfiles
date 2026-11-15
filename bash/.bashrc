# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
unalias ga gd 2>/dev/null
# /etc/omarchy.conf is written by omarchy-dev-link. When absent, force the
# package default instead of preserving a stale inherited dev-link value before
# we decide which rc file to source.
if [[ -f /etc/omarchy.conf ]]; then
  source /etc/omarchy.conf
  export OMARCHY_PATH="${OMARCHY_PATH:-/usr/share/omarchy}"
else
  export OMARCHY_PATH=/usr/share/omarchy
fi
export PATH=/home/uminda/.opencode/bin:$PATH
alias railway=/home/uminda/.local/share/mise/installs/node/24.15.0/lib/node_modules/@railway/cli/bin/railway

# >>> Codex installer >>>
export PATH="/home/uminda/.local/bin:$PATH"
# <<< Codex installer <<<
source "$OMARCHY_PATH/default/bash/rc"

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly


# alias p='python'
# # Navigation
# alias ..='cd ..'          # Omarchy default
# alias ...='cd ../..'      # Omarchy default
# alias ~='cd ~'            # Omarchy default

# Listing (eza is pre-installed on Omarchy)
# alias ls='eza --color=always --group-directories-first'  # Omarchy default
# alias ll='eza -la --icons --group-directories-first'    # Omarchy default
# alias tree='eza --tree --level=2'                       # Omarchy default

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph'

# Neovim shortcut
alias v='nvim'

# Quick system update (you already have omarchy-update, but this is handy)
alias update='omarchy-update'

# Tmux: start/attach session in current directory
unalias t 2>/dev/null
alias t='tmux new-session -A -s "$(basename "$(pwd)")" -c "$(pwd)"'
alias ta='tmux attach -t'
alias tls='tmux ls'

# Directory shortcuts for your projects
alias dev='cd ~/dev'
alias docs='cd ~/Documents'

# dropstone
export PATH=/home/uminda/.dropstone/bin:$PATH

# ble.sh: fish-style faded autosuggestions and syntax highlighting for bash.
# Installed per-user at ~/.local/share/blesh. Remove this block to undo.
[[ $- == *i* ]] && source "$HOME/.local/share/blesh/ble.sh"
