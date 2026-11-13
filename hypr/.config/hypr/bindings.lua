-- Personal keybinding overrides. Loaded after Omarchy's defaults.
--
-- See the whole live map:
--   omarchy menu keybindings --print
-- or the annotated version in this folder:
--   ~/.config/hypr/KEYMAP.md
--
-- o.bind(keys, description, command)      add a binding
-- o.rebind(keys, description, command)    replace an existing one
-- hl.unbind(keys)                         remove a default binding

-- Herdr, on the same SUPER + SHIFT + letter pattern as the other app launchers.
-- Omarchy's default stays on SUPER + CTRL + RETURN; both work.
o.bind("SUPER + SHIFT + H", "Herdr", { omarchy = "terminal-herdr" })
