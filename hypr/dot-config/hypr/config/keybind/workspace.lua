for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = true }))
	hl.bind(mainMod .. " + ALT + "  ..  key, hl.dsp.window.move({ workspace = i, follow = false }))
end

local gamingWorkspace = "name:gaming"
hl.bind(mainMod .. " + G", hl.dsp.focus({ workspace = gamingWorkspace }))
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.window.move({ workspace = gamingWorkspace, follow = true }))
hl.bind(mainMod .. " + ALT + G", hl.dsp.window.move({ workspace = gamingWorkspace, follow = false }))

hl.bind(mainMod .. " + CONTROL + Right", hl.dsp.focus({ workspace = "r+1" }))
hl.bind(mainMod .. " + CONTROL + Left", hl.dsp.focus({ workspace = "r-1" }))
hl.bind(mainMod .. " + CONTROL + Down", hl.dsp.focus({ workspace = "empty" }))
hl.bind(mainMod .. " + CONTROL + ALT + Right", hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(mainMod .. " + CONTROL + ALT + Left", hl.dsp.window.move({ workspace = "r-1" }))

-- Scroll through existing workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + SHIFT + Grave", hl.dsp.window.move({ workspace = "special" }))
hl.bind(mainMod .. " + Grave", hl.dsp.workspace.toggle_special())

