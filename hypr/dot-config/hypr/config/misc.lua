hl.config({
	dwindle = {
		force_split = 2,
		preserve_split = true,
		smart_resizing = false,
		special_scale_factor = .96,
	},
	misc = {
		col = {
			splash = CACHYLGREEN,
		},
		font_family = 'FiraCode Nerd Font',
		splash_font_family = 'FiraCode Nerd Font',
		vrr = 3,
		enable_swallow = true,
		swallow_regex = "(kitty|foot|ghostty|[Kk]onsole|Alacritty|gnome-terminal|xfce[0-9]?-terminal)",
		initial_workspace_tracking = 0,
		middle_click_paste = false,
	},
	binds = {
		hide_special_on_workspace_change = true,
	},
	xwayland = {
		force_zero_scaling = true
	},
	cursor = {
		inactive_timeout = 5,
		no_warps = true,
	},
	ecosystem = {
		no_donation_nag = true,
	},
})
