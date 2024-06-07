local wezterm = require 'wezterm'

return {
    color_scheme = "Dracula (Official)",
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = false,
    window_decorations = "RESIZE",
    adjust_window_size_when_changing_font_size = false,
    hide_tab_bar_if_only_one_tab = true,
    keys = {
        { key = 'h', mods = 'CTRL', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
        { key = 'y', mods = 'CTRL', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }, },
    }
}
