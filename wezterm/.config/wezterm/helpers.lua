local wezterm = require("wezterm")

-- module table for exporting
local module = {}

-- private function (not visible from outside)
local function private_helper()
	wezterm.log_error("hello!")
end

-- define a function in the module table.
-- Only function defined in `module` will be exported to code
-- that imports this module

function module.apply_to_config(config)
	private_helper()

	config.font = wezterm.font_with_fallback({
		"Dank Mono",
		"Agave Nerd Font",
	})
	config.font_size = 18

	config.enable_tab_bar = false
	config.window_decorations = "RESIZE"

	config.window_background_opacity = 0.9
	config.text_background_opacity = 0.9

	config.window_background_image_hsb = {
		-- Darken the background image
		brightness = 1.0,
		-- hue
		hue = 1.0,
		--saturation
		saturation = 1.0,
	}
	config.window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 0,
	}
	config.color_scheme = "Catppuccin Mocha"
end

-- return module table
return module
