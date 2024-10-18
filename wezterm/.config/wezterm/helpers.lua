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

	-- Other font options are
	-- 1. Dank Mono(paid)
	-- 2. MonoLisa (paid)
	-- 3. JetBrains Mono (free)
	-- 4. Cascadia Code (free) --> Same as MonoLisa
	-- 5. DejaVu Shans (free)
	-- 6. Code new Roman (free)
	-- [conc.] Swithched to Cascadia Code bcz, it's free, and I don't want a bad habit of paid fonts
	config.font = wezterm.font_with_fallback({
		{
			family = "Monaspace Argon",
			weight = "Regular",
			harfbuzz_features = { "calt", "ss01", "ss02", "ss03", "ss05", "ss06", "ss07", "ss08", "ss09", "liga" },
		},
		{
			family = "Hack Nerd Font",
		},
	})

	config.font_size = 18
	config.line_height = 1.2

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
	config.color_scheme = "nordfox"
end

-- return module table
return module
