-- API
local wezterm = require("wezterm")

-- config
local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'


-- font
config.font_size = 14
config.font = wezterm.font("UbuntuMono Nerd Font Mono")
config.adjust_window_size_when_changing_font_size = false

-- tabs
config.hide_tab_bar_if_only_one_tab = false

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '/',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '%',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}


-- auto reload
config.automatically_reload_config = true


-- return config
return config
