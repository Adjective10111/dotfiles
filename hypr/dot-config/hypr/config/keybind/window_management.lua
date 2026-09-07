local function layoutSwitch()
	local workspace = hl.get_active_workspace()
	if hl.get_active_special_workspace() then
		workspace = hl.get_active_special_workspace()
	end
	if not workspace then
		return
	end

	local next_layout = "dwindle"
	local layouts = { "dwindle", "scrolling", } -- "monocle", "master" }
	for i = 1, #layouts do
		if layouts[i] == workspace.tiled_layout then
			local next_layout_idx = (i % #layouts) + 1
			next_layout = layouts[next_layout_idx]
			break
		end
	end

	if workspace.special then
		hl.workspace_rule({ workspace = tostring(workspace.name), layout = next_layout })
	else
		hl.workspace_rule({ workspace = tostring(workspace.id), layout = next_layout })
	end
end

-------------------------
--- WINDOW MANAGEMENT ---
-------------------------

hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("hyprctl kill"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + CONTROL + L", hl.dsp.exec_cmd("loginctl lock-session"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd(shellCall .. "panel-toggle session"))

hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen()) -- exclusive fullscreen
hl.bind(mainMod .. " + D", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod .. " + ALT + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + TAB", layoutSwitch)
hl.bind(mainMod .. " + ALT + TAB", hl.dsp.layout("togglesplit"))

-- Change focus
hl.bind(mainMod .. " + Left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + Up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + Down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + Right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind("ALT + Tab", hl.dsp.window.cycle_next({ tiled = true }))

-- Move active window around current workspace
hl.bind(mainMod .. " + SHIFT + Left",      hl.dsp.window.move({ direction = "l",     group_aware = true }))
hl.bind(mainMod .. " + SHIFT + Up",        hl.dsp.window.move({ direction = "u",     group_aware = true }))
hl.bind(mainMod .. " + SHIFT + Down",      hl.dsp.window.move({ direction = "d",     group_aware = true }))
hl.bind(mainMod .. " + SHIFT + Right",     hl.dsp.window.move({ direction = "r",     group_aware = true }))
hl.bind(mainMod .. " + SHIFT + H",         hl.dsp.window.move({ direction = "left",  group_aware = true }))
hl.bind(mainMod .. " + SHIFT + J",         hl.dsp.window.move({ direction = "down",  group_aware = true }))
hl.bind(mainMod .. " + SHIFT + K",         hl.dsp.window.move({ direction = "up",    group_aware = true }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right", group_aware = true }))

hl.bind(mainMod .. " + CONTROL + SHIFT + Left",      hl.dsp.window.move({ workspace = "r-1" }))
hl.bind(mainMod .. " + CONTROL + SHIFT + Right",     hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(mainMod .. " + CONTROL + SHIFT + H",         hl.dsp.window.move({ workspace = "r-1" }))
hl.bind(mainMod .. " + CONTROL + SHIFT + L", hl.dsp.window.move({ workspace = "r+1" }))

-- Move floating window
hl.bind(mainMod .. " + Z", hl.dsp.window.center())

-- Resize
hl.bind(mainMod .. " + R", hl.dsp.submap("resize"))
hl.define_submap("resize", function()
	-- Set repeating binds for resizing the active window.
	hl.bind("Left",  hl.dsp.window.resize({ x = -10, y = 0,   relative = true}), { repeating = true })
	hl.bind("Down",  hl.dsp.window.resize({ x = 0,   y = -10, relative = true}), { repeating = true })
	hl.bind("Up",    hl.dsp.window.resize({ x = 0,   y = 10,  relative = true}), { repeating = true })
	hl.bind("Right", hl.dsp.window.resize({ x = 10,  y = 0,   relative = true}), { repeating = true })
	hl.bind("H",     hl.dsp.window.resize({ x = -10, y = 0,   relative = true}), { repeating = true })
	hl.bind("J",     hl.dsp.window.resize({ x = 0,   y = -10, relative = true}), { repeating = true })
	hl.bind("K",     hl.dsp.window.resize({ x = 0,   y = 10,  relative = true}), { repeating = true })
	hl.bind("L",     hl.dsp.window.resize({ x = 10,  y = 0,   relative = true}), { repeating = true })

	hl.bind("catchall", hl.dsp.submap("reset"), {release = true})
end)

-- Move & Resize with mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

