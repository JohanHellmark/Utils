-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action


-- This table will hold the configuration.
local config = wezterm.config_builder()
config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }

config.keys = {
  {
    key = '7',
    mods = 'LEADER|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '-',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'h',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'l',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = 'j',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'k',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Down',
  },
}

-- and finally, return the configuration to wezterm
return config
