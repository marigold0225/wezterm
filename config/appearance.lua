local wezterm = require('wezterm')
local colors = require('colors.custom')
local gpu_adapters = require('utils.gpu_adapter')
-- local fonts = require('config.fonts')

return {
    animation_fps = 60,
    max_fps = 60,
    front_end = 'WebGpu',
    webgpu_power_preference = 'HighPerformance',
    webgpu_preferred_adapter = gpu_adapters:pick_best(),
    enable_kitty_graphics = true,
    -- color scheme
    --colors = colors,
    -- color_scheme = 'FishTank',
    -- color_scheme = 'Darcula (base16)',
    color_scheme = 'Dracula (Official)',
    -- color_scheme = 'Catppuccin Frappe',
    -- color_scheme = 'Catppuccin Mocha',
    -- background
    background = {
        -- {
        --   --  source = { File = wezterm.config_dir .. '/backdrops/space.jpg' },
        -- source = { File = wezterm.GLOBAL.background },
        -- source = { Color = "black" },
        -- },
        {
            -- source = { Color = colors.background },
            source = { File = wezterm.config_dir .. '/backdrops/voyage.jpg' },
            -- source = { File = wezterm.GLOBAL.background },

            height = '100%',
            width = '100%',
            opacity = 0.15,
        },
    },

    -- scrollbar
    enable_scroll_bar = true,

    --cursor
    default_cursor_style = "BlinkingBlock",
    cursor_blink_ease_in = "Constant",
    cursor_blink_ease_out = "Constant",
    cursor_blink_rate = 700,

    -- tab bar
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = false,
    use_fancy_tab_bar = false,
    tab_max_width = 25,
    show_tab_index_in_tab_bar = false,
    switch_to_last_active_tab_when_closing_tab = true,

    -- window
    adjust_window_size_when_changing_font_size = false,
    window_decorations = "INTEGRATED_BUTTONS|RESIZE",
    -- integrated_title_button_style = "Windows",
    integrated_title_button_color = "Auto",
    integrated_title_button_alignment = "Right",
    -- integrated_title_button_color = "Auto",
    integrated_title_button_style = "Gnome",
    integrated_title_buttons = { 'Hide', 'Maximize', 'Close' },
    initial_cols = 170,
    initial_rows = 35,
    window_padding = {
        -- left = 2,
        -- right = 0,
        -- top = 12,
        -- bottom = 5,
        left = '1cell',
        right = '1cell',
        top = '0.5cell',
        bottom = '0.5cell',
    },
    window_close_confirmation = 'NeverPrompt',
    -- window_frame = {
    --    active_titlebar_bg = '#090909',
    --    -- font = fonts.font,
    --    -- font_size = fonts.font_size,
    -- },
    window_frame = {
        active_titlebar_bg = '#0F2536',
        inactive_titlebar_bg = '#0F2536',
        --   inactive_titlebar_bg = '#353535',
        --   active_titlebar_bg = '#2b2042',
        --   inactive_titlebar_fg = '#cccccc',
        --   active_titlebar_fg = '#ffffff',
        --   inactive_titlebar_border_bottom = '#2b2042',
        --   active_titlebar_border_bottom = '#2b2042',
        --   button_fg = '#cccccc',
        --   button_bg = '#2b2042',
        --   button_hover_fg = '#ffffff',
        --   button_hover_bg = '#3b3052',
        --   border_left_width = '0.5cell',
        --   border_right_width = '0.5cell',
        --   border_bottom_height = '0.25cell',
        --   border_top_height = '0.25cell',
        --   border_left_color = 'purple',
        --   border_right_color = 'purple',
        --   border_bottom_color = 'purple',
        --   border_top_color = 'purple',
    },
    inactive_pane_hsb = { saturation = 0.9, brightness = 0.65 },
}
