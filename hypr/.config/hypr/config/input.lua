-- Input configuration

hl.config({
	input = {
		kb_layout = "us,ir",
		kb_options = "caps:escape",
		accel_profile = "flat",
		scroll_method = "2fg",
		follow_mouse = 2,
    float_switch_override_focus = 0,
		mouse_refocus = false,
		touchpad = {
			natural_scroll = true,
		},
	},
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down",       action = "close" })
hl.gesture({ fingers = 3, direction = "up",         action = "fullscreen" })
hl.gesture({ fingers = 4, direction = "left",       action = "float" })
