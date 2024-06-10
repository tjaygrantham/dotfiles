local wezterm = require("wezterm")
local config = wezterm.config_builder()

local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main
config.colors = theme.colors()
config.window_frame = theme.window_frame()

config.font = wezterm.font("MesloLGS Nerd Font")
config.font_size = 14

config.keys = {
	{
		key = "LeftArrow",
		mods = "SUPER",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "RightArrow",
		mods = "SUPER",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = ",",
		mods = "SUPER",
		action = wezterm.action.MoveTabRelative(-1),
	},
	{
		key = ".",
		mods = "SUPER",
		action = wezterm.action.MoveTabRelative(1),
	},
}

return config
