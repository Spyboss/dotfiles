# Keymap + window auto-map (exact)

Generated from the live compositor, not from memory:
- `omarchy menu keybindings --print` (242 entries)
- `hyprctl binds -j` (247 raw binds)
- sources: `$OMARCHY_PATH/default/hypr/bindings/*.lua`, `~/.config/hypr/*.lua`

Hyprland 0.56.2, Omarchy 4.5.0-3, config provider: **lua**.

Your `~/.config/hypr/bindings.lua` holds one personal binding (SUPER SHIFT + H)
and one removal (SUPER SHIFT + SLASH). Everything else is an Omarchy default.

---

## 1. App launchers (SUPER SHIFT + letter)

| Key | Opens | Exact command run |
|---|---|---|
| SUPER + RETURN | Terminal | `omarchy-launch-terminal` (inherits focused window's cwd) |
| SUPER SHIFT + RETURN | Browser | `omarchy-launch-browser` |
| SUPER SHIFT + B | Browser | `omarchy-launch-browser` |
| SUPER SHIFT ALT + B | Browser (private) | `omarchy-launch-browser --private` |
| SUPER SHIFT + F | File manager | `omarchy-launch-nautilus` |
| SUPER SHIFT ALT + F | File manager (cwd) | `omarchy-launch-nautilus-cwd` |
| SUPER SHIFT + H | Herdr desktop app | `omarchy-launch-or-focus ^herdr-app$ "uwsm-app -- herdr-app"` |
| SUPER ALT + RETURN | Tmux | `omarchy-launch-terminal-tmux` |
| SUPER CTRL + RETURN | Herdr | `omarchy-launch-terminal-herdr` |
| SUPER SHIFT + N | Editor | `omarchy-launch-editor` |
| SUPER SHIFT + W | Omawrite | `uwsm-app -- omawrite` |
| SUPER SHIFT + O | Obsidian | `uwsm-app -- obsidian` (focuses existing `^obsidian$`) |
| SUPER SHIFT + M | Music | `omarchy-launch-spotify` |
| SUPER SHIFT ALT + M | Music TUI | `omarchy-launch-or-focus-tui cliamp` |
| SUPER SHIFT + D | Docker | `omarchy-launch-tui omarchy-launch-docker-tui` |
| SUPER SHIFT + G | Signal | `omarchy-launch-signal` |
| SUPER SHIFT + Q | Calculator | `omacalc` |
| SUPER SHIFT + A | ChatGPT | `omarchy-launch-webapp https://chatgpt.com` |
| SUPER SHIFT ALT + A | Grok | `omarchy-launch-webapp https://grok.com` |
| SUPER SHIFT + C | Calendar | `omarchy-launch-webapp https://app.hey.com/calendar/weeks/` |
| SUPER SHIFT + E | Email | `omarchy-launch-webapp https://app.hey.com` |
| SUPER SHIFT ALT + E | New email | `omarchy-launch-webapp https://app.hey.com/messages/new?...` |
| SUPER SHIFT + Y | YouTube | `omarchy-launch-webapp https://youtube.com/` |
| SUPER SHIFT + S | Google Maps | `omarchy-launch-webapp https://maps.google.com/` (focus) |
| SUPER SHIFT + P | Google Photos | `omarchy-launch-or-focus-webapp "Google Photos"` |
| SUPER SHIFT ALT + G | WhatsApp | `omarchy-launch-or-focus-webapp WhatsApp` |
| SUPER SHIFT CTRL + G | Google Messages | `omarchy-launch-or-focus-webapp "Google Messages"` |
| SUPER SHIFT + X | X | `omarchy-launch-webapp https://x.com/` |
| SUPER SHIFT ALT + X | X Post | `omarchy-launch-webapp https://x.com/compose/post` |
| SUPER ALT + SPACE | Apps menu | shell panel |

Note: SUPER SHIFT + W is **Omawrite**, not Typora. Your dead `bindings.conf`
claimed Typora here; it was never loaded.

## 2. Window control

| Key | Action |
|---|---|
| SUPER + W / SUPER + Q | Close window |
| CTRL ALT + DELETE | Close all windows |
| SUPER + F | Full screen |
| SUPER ALT + F | Full width |
| SUPER CTRL + F | Tiled full screen |
| SUPER + T | Toggle floating/tiling |
| SUPER + P | Pseudo window |
| SUPER + J | Toggle window split |
| SUPER + G | Toggle window grouping |
| SUPER ALT + G | Move active window out of group |
| SUPER + O | Pop window out (float & pin) |
| SUPER + M | Minimize window to the dock |
| SUPER + arrows | Focus left/right/up/down |
| SUPER SHIFT + arrows | Swap window left/right/up/down |
| SUPER ALT + arrows | Move window into group (left/right/top/bottom) |
| SUPER CTRL + LEFT/RIGHT | Move grouped-window focus |
| SUPER ALT + 1..5 | Switch to group window 1..5 |
| SUPER ALT + TAB | Next window in group |
| SUPER SHIFT ALT + TAB | Previous window in group |
| ALT + TAB | Cycle next window **and** raise it |
| SHIFT ALT + TAB | Cycle previous window, lower the one left |
| CTRL ALT + TAB | Focus next monitor |
| SHIFT CTRL ALT + TAB | Focus previous monitor |
| SUPER + MINUS / EQUAL | Expand / shrink left (SHIFT=up/down, ALT=little, CTRL=lot) |
| SUPER ALT + Home | Save window width |
| SUPER + Home | Restore window width |
| SUPER + BACKSPACE | Toggle transparency on a window |
| SUPER SHIFT + BACKSPACE | Toggle window gaps |
| SUPER CTRL + BACKSPACE | Toggle single-window square aspect |
| SUPER ALT + S | Move window to scratchpad |
| SUPER + S | Toggle scratchpad |
| SUPER SHIFT + grave | Move window to Quake console |
| SUPER + grave | Toggle Quake console |
| SUPER + LEFT MOUSE | Move window |
| SUPER + RIGHT MOUSE | Resize window |

## 3. Workspaces

| Key | Action |
|---|---|
| SUPER + 1..0 | Switch to workspace 1..10 |
| SUPER SHIFT + 1..0 | Move window to workspace 1..10 |
| SUPER SHIFT ALT + 1..0 | Move window **silently** to workspace 1..10 |
| SUPER + TAB / SUPER SHIFT + TAB | Next / previous workspace |
| SUPER CTRL + TAB | Former workspace |
| SUPER + mouse scroll | Scroll workspaces |
| SUPER SHIFT CTRL/ALT + arrows | Move window / whole workspace to another monitor |
| SUPER + L / SUPER ALT + L | Cycle workspace layout forward / back |

## 4. System, menus, shell panels

| Key | Action |
|---|---|
| SUPER + SPACE | Omarchy menu |
| SUPER + ESCAPE | System menu |
| SUPER + K | Keybindings (this list) |
| SUPER ALT + K / SUPER CTRL + K | Tmux / Herdr keybindings |
| SUPER CTRL + T / SUPER SHIFT CTRL + SPACE | Theme menu |
| SUPER CTRL + C | Capture menu |
| SUPER CTRL + O | Toggle menu |
| SUPER CTRL + A / B / D / H / N / P | Audio / Bluetooth / Display / Hardware / Network / Power |
| SUPER CTRL + E | Emojis |
| SUPER CTRL + V | Clipboard manager |
| SUPER CTRL + S | Share |
| SUPER CTRL + SPACE / W | Background switcher |
| SUPER CTRL + R | Set reminder |
| SUPER SHIFT CTRL + R | Clear reminders |
| SUPER CTRL + PERIOD | Transcode |
| SUPER CTRL + PRINT | OCR text from screenshot |
| SUPER CTRL + Z / SUPER CTRL ALT + Z | Zoom in / reset zoom |
| SUPER CTRL + 1..9 | Bar panel 1..9 |
| SUPER CTRL + L | Lock system |
| SUPER CTRL + I | Toggle locking on idle |
| SUPER CTRL + Delete | Toggle laptop display |
| SUPER CTRL ALT + F | Toggle full screen desktop |
| SUPER + PRINT | Color picker |
| PRINT | Screenshot |
| SUPER CTRL ALT + C | Screenshot |
| ALT + PRINT | Screen recording |
| SUPER + C / V / X | Universal copy / paste / cut |
| SUPER + A | Select all |
| SUPER + I / SUPER SHIFT + I | Switch input language forward / back |
| SUPER + COMMA | Dismiss last notification |
| SUPER SHIFT + COMMA | Dismiss all |
| SUPER SHIFT ALT + COMMA | Notification history |
| SUPER CTRL + COMMA | Notification keyboard control |
| SUPER CTRL ALT + COMMA | Toggle silencing notifications |

## 5. Media / hardware keys

| Key | Action |
|---|---|
| XF86AudioRaiseVolume / Lower | Volume up / down (ALT = precise) |
| XF86AudioMute | Mute (SHIFT = switch output) |
| XF86AudioMicMute | Mute microphone |
| XF86AudioPlay / Pause / Next / Prev | Media transport (SHIFT = switch media source) |
| XF86MonBrightnessUp / Down | Brightness (ALT = precise, SHIFT = max/min) |
| XF86KbdBrightnessUp / Down | Keyboard backlight |
| XF86KbdLightOnOff | Keyboard backlight cycle |
| XF86TouchpadToggle / On / Off | Touchpad |
| XF86PowerOff | Power menu |
| XF86Eject | Eject media |
| CTRL + SPACE | Direct input for terminal prefix |
| SHIFT ALT + D / L | Download video from web app / copy URL from web app |

---

## 6. Window auto-map (workspace placement)

`~/.config/hypr/windows.lua`, loaded last, so these win over Omarchy defaults.
Matching is against the window **class** unless noted.

| # | Rule (class regex) | Target | Actually matches |
|---|---|---|---|
| 1 | `^(google-chrome\|chromium\|firefox)$` | ws 1 | Chrome |
| 2 | `.*[Aa]lacritty\|.*[Gg]hostty\|.*[Kk]itty\|.*[Ff]oot` | ws 2 | foot, and every TUI run inside it |
| 3 | `.*[Nn]autilus\|.*[Ff]iles` | ws 3 | org.gnome.Nautilus |
| 4 | `^mpv$` | ws 4 | mpv |
| 5 | `.*[Ww]hatsapp.*\|.*[Ss]ignal` | ws 5 | WhatsApp webapp, Signal |
| 5b | `.*[Dd]iscord.*` | ws 5 | Discord webapp |
| 6 | `.*[Dd]ocker` | ws 6 | `org.omarchy.omarchy-launch-docker-tui` |
| 7 | `.*[Oo]bs.*` | ws 7 | obsidian, and anything containing "obs" |
| 7b | `^[Tt]ypora$` | ws 7 | Typora |
| 7c | `^omawrite$` | ws 7 | Omawrite |
| 8 | `^herdr-app$` | ws 8 | Herdr desktop app, always |
| 9 | `^spotify$` + `^org\.omarchy\.cliamp$` | ws 9 | Spotify and cliamp, wherever opened from |
| 10 | `^TelegramDesktop$` | ws 10 | Telegram, kept apart from WhatsApp and Signal |

Telegram's class is `TelegramDesktop`, not the usual `org.telegram.desktop`,
because this install is the manual tarball build (`~/Downloads/tsetup.6.6.2/`),
not the flatpak. Reinstalling it as a flatpak would change the class and the
rule would stop matching.

Not mapped: Slack, and the ChatGPT webapp (opens on the current workspace).

## 7. Problems found

**Dead files, now archived.** Config provider is `lua`, so `.conf` files were
inert. Moved to `~/.config/hypr/archive-pre-quattro-20261113/`:
`hyprland.conf`, `bindings.conf`, `input.conf`, `looknfeel.conf`,
`monitors.conf`, `autostart.conf`, `clipboard.conf` and 9 `*.bak.*` files.
Still live: `hypridle.conf`, `hyprlock.conf`, `hyprsunset.conf`, `xdph.conf`
(read by their own programs, not by Hyprland).

**A class rule can't separate two terminals.** `opencode` runs inside foot,
whose class is `foot`, so it hits rule 2 (ws 2). That no longer matters, since
opencode is used inside Herdr now (ws 8). Terminal apps launched via
`omarchy-launch-tui` get their own class (`org.omarchy.<name>`), which is the
only way to map one.

**Rule 7 is over-broad.** `.*[Oo]bs.*` matches any class containing "obs".
Left as-is deliberately.

**No `silent` on any rule.** Opening a matched app switches you to that
workspace. Omarchy's own rules use `workspace = "N silent"` when they don't
want to steal focus.

**`SUPER SHIFT + SLASH` (Passwords) removed.** Omarchy's default pointed it at
1Password, which is not installed, so the key did nothing. Unbound in
`bindings.lua` rather than left dangling.

**ChatGPT has no workspace rule.** It is used inside the normal browser, which
is already `google-chrome` on ws 1, so a `chat` rule would never fire. Omarchy's
`SUPER SHIFT + A` does open a separate Chrome app window
(`chrome-chatgpt.com__-Default`) which now opens on the current workspace.

**Herdr uses the desktop app**, class `herdr-app`, not the TUI in a terminal.
`SUPER SHIFT + H` focuses the running window instead of opening a second one.
Omarchy's own `SUPER CTRL + RETURN` still starts the terminal TUI, and that one
lands on ws 2 with the other terminals.

**`ALT + TAB` has two bindings** — `cycle_next` then `bring_to_top`. That is
deliberate upstream (see `bindings/tiling.lua:56-60`), not a bug.
