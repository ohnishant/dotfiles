local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.color_scheme = "Poimandres"
config.window_background_opacity = 0.9

config.enable_tab_bar = false

config.font = wezterm.font("Iosevka Term NF")
config.font_size = 16.0

local act = wezterm.action
config.keys = {
	{ key = "Backspace", mods = "CTRL", action = act.SendKey({ key = "w", mods = "CTRL" }) },
}

-- disable ligatures
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

return config
