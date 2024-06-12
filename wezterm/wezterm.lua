local wezterm = require("wezterm")
local config = wezterm.config_builder()

local function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

local rose_pine_plugin = wezterm.plugin.require("https://github.com/neapsix/wezterm")
local theme = get_appearance():find("Light") and rose_pine_plugin.dawn or rose_pine_plugin.main
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

config.mouse_bindings = {
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "SUPER",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
	{
		event = { Down = { streak = 1, button = "Left" } },
		mods = "SUPER",
		action = wezterm.action.Nop,
	},
}

return config
