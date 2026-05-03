# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

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

# Tmux shortcut (use Omarchy default: tmux attach || tmux new -s Work)
# alias t='tmux'  # Omarchy default
alias ta='tmux attach -t'
alias tls='tmux ls'

# Directory shortcuts for your projects
alias dev='cd ~/dev'
alias docs='cd ~/Documents'

# opencode
export PATH=/home/uminda/.opencode/bin:$PATH
