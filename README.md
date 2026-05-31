# dotfiles

Shell and application configs for my Linux setup (Omarchy/Hyprland).

Managed with manual symlinks. Each directory contains the full path from `$HOME`.

## What's here

| Directory | Contents |
|-----------|----------|
| `bash/` | .bashrc, bash profile |
| `git/` | .gitconfig with aliases and preferences |
| `nvim/` | Neovim editor config |
| `tmux/` | tmux terminal multiplexer config |
| `starship/` | Starship prompt config |
| `hypr/` | Hyprland compositor (keybinds, monitors, input, idle) |
| `waybar/` | Waybar status bar (config + CSS) |
| `alacritty/` | Alacritty terminal config |
| `ghostty/` | Ghostty terminal config |
| `mise/` | Mise dev tool version manager config |
| `opencode/` | opencode CLI config |

## Usage

```bash
stow bash
stow git
stow nvim
# etc.
```

Or symlink manually:

```bash
ln -sf ~/dotfiles/bash/.bashrc ~/.bashrc
ln -sf ~/dotfiles/git/.config/config ~/.config/git/config
```
