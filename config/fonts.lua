local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'JetBrainsMono Nerd Font'
-- local font = 'Hack Nerd Font'
-- local font = 'SauceCodePro Nerd Font'
-- local font = 'Source Code Pro'
local font_size = platform().is_mac and 16 or 16

return {
    font = wezterm.font(font),
    font_size = font_size,

    --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
    freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
    freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
