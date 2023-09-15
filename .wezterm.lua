-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "s3r0 modified (terminal.sexy)"

config.keys = {
	{
		key = "f",
		mods = "CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	-- This will create a new split and run your default program inside it
	{
		key = "s",
		mods = "CTRL",
		action = wezterm.action.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},
	{
		key = "d",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}

config.font_size = 16.0
config.window_background_opacity = 1.0 -- Set opacity for background

config.window_background_gradient = {
	colors = {
		"#1e1e1e", -- Background color (use your desired color here)
		"#1e1e1e", -- End color of the gradient (same as start color for solid effect)
	},
}

-- Optionally set a background color using a gradient

config.background = {
	{
		source = {
			File = wezterm.home_dir .. "/.config/wezterm/hxtree.png",
		},
		vertical_align = "Bottom",
		horizontal_align = "Right",
		hsb = {
			saturation = 0.3,
			brightness = 0.1,
		},
		width = 300,
		opacity = 0.5,
		height = 300,
		repeat_x = "NoRepeat",
		repeat_y = "NoRepeat",
	},
}

-- and finally, return the configuration to wezterm
return config
