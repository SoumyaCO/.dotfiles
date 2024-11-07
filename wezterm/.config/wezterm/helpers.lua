local wezterm = require("wezterm")

-- module table for exporting
local module = {}

-- private function (not visible from outside)
local function private_helper()
	wezterm.log_error("Err: Error in the private_helper")
end

-- define a function in the module table.
-- Only function defined in `module` will be exported to code
-- that imports this module

function module.apply_to_config(config)
	private_helper()

	--  NOTE: Monaspace font's ligatures need this feature.
	-- 	{
	-- 		harfbuzz_features = { "calt", "ss01", "ss02", "ss03", "ss05", "ss06", "ss07", "ss08", "ss09", "liga" },
	-- 	},
	-- 	Other good fonts are(free):
	-- 	Victor Mono
	-- 	Monaspace Fonts
	-- 	Code new Roman [prev]
	--  DejaVu Sans
	--  Zed Mono [Current]
    --  Zed Mono Medium Extended

	config.font = wezterm.font_with_fallback({
		{
			family = "JetBrainsMono Nerd Font",
		},
	})

	config.font_size = 16
	config.line_height = 1.0

	config.enable_tab_bar = false
	config.window_decorations = "RESIZE"

	config.window_background_opacity = 1.0
	config.text_background_opacity = 1.0

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
	-- I'm using neovim with
	-- "Nord" theme which is similar to "Nordfox" in wezterm
	config.color_scheme = "Bamboo"
end

-- return module table
return module
