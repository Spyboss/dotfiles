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

-- Herdr desktop app, on the same SUPER + SHIFT + letter pattern as the other
-- app launchers. Focuses the running window instead of opening a second one.
o.bind("SUPER + SHIFT + H", "Herdr", { launch = "herdr-app", focus = "^herdr-app$" })

-- Omarchy's default here opens 1Password, which is not installed on this
-- machine, so the key did nothing. Removed instead of left dangling.
hl.unbind("SUPER + SHIFT + SLASH")
