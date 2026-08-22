-- Restore auto-positioning window rules from the pre-Quattro dotfiles setup.
-- Old .conf equivalents (hyprland.conf.bak.1785607683):
--   windowrule = workspace 1, match:class ^(google-chrome|chromium|firefox)$
--   windowrule = workspace 2, match:class .*[Aa]lacritty|.*[Gg]hostty|.*[Kk]itty
--   windowrule = workspace 4, match:class .*[Cc]hat.*|.*[Oo]pencode
--   windowrule = workspace 5, match:class .*[Ww]hatsapp.*|.*[Ss]ignal|.*[Tt]elegram
--   windowrule = workspace 6, match:class .*[Dd]ocker
--   windowrule = workspace 7, match:class .*[Oo]bsidian|.*[Tt]ypora

o.window({ class = "^(google-chrome|chromium|firefox)$" }, { workspace = "1" })

o.window({ class = ".*[Aa]lacritty|.*[Gg]hostty|.*[Kk]itty|.*[Ff]oot" }, { workspace = "2" })

o.window({ class = ".*[Nn]autilus|.*[Ff]iles" }, { workspace = "3" })

o.window({ class = ".*[Cc]hat.*|.*[Oo]pencode" }, { workspace = "4" })

o.window({ class = ".*[Ww]hatsapp.*|.*[Ss]ignal|.*[Tt]elegram" }, { workspace = "5" })
o.window({ title = ".*[Ww]hatsapp.*" }, { workspace = "5" })

o.window({ class = ".*[Dd]ocker" }, { workspace = "6" })

o.window({ class = ".*[Oo]bs.*" }, { workspace = "7" })
