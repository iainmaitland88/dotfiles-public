-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.enable_tab_bar = true
config.window_frame = {
	font = wezterm.font("UbuntuMono Nerd Font"),
	font_size = 18,
}
config.font = wezterm.font("UbuntuMono Nerd Font")
config.font_size = 18
config.line_height = 1.4
config.color_scheme = "Catppuccin Mocha"
config.enable_tab_bar = false

-- Plugins
wezterm.plugin.require("https://github.com/iainmaitland88/hopper.wezterm").apply_to_config(config)

-- Finally, return the configuration to wezterm:
return config
