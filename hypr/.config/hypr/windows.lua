-- Auto-placement: which workspace each app opens on.
-- Loaded after Omarchy's defaults, so these win.
-- Matching is against the window class (find it with: hyprctl clients).

-- Browser
o.window({ class = "^(google-chrome|chromium|firefox)$" }, { workspace = "1" })

-- Terminals
o.window({ class = ".*[Aa]lacritty|.*[Gg]hostty|.*[Kk]itty|.*[Ff]oot" }, { workspace = "2" })

-- Files
o.window({ class = ".*[Nn]autilus|.*[Ff]iles" }, { workspace = "3" })

-- Media playback
o.window({ class = "^mpv$" }, { workspace = "4" })

-- Messaging
o.window({ class = ".*[Ww]hatsapp.*|.*[Ss]ignal" }, { workspace = "5" })
o.window({ class = ".*[Dd]iscord.*" }, { workspace = "5" })

-- Docker
o.window({ class = ".*[Dd]ocker" }, { workspace = "6" })

-- Writing and notes
o.window({ class = ".*[Oo]bs.*" }, { workspace = "7" })
o.window({ class = "^[Tt]ypora$" }, { workspace = "7" })
o.window({ class = "^omawrite$" }, { workspace = "7" })

-- Herdr desktop app: always opens on workspace 8. SUPER + SHIFT + H launches it.
o.window({ class = "^herdr-app$" }, { workspace = "8" })

-- Media: wherever it is opened from, it lands on workspace 9.
o.window({ class = "^spotify$" }, { workspace = "9" })
o.window({ class = "^org\\.omarchy\\.cliamp$" }, { workspace = "9" })

-- Telegram: kept apart from WhatsApp and Signal. Class is TelegramDesktop
-- because this install is the manual tarball build, not the flatpak.
o.window({ class = "^TelegramDesktop$" }, { workspace = "10" })
