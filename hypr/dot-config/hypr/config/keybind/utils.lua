-- Screen Capture
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(shellCall .. "screenshot-region"))
hl.bind("Print", hl.dsp.exec_cmd(shellCall .. "screenshot-fullscreen"))
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(shellCall .. "screenshot-region"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(shellCall .. "plugin:screen-toolkit toggle"))

-- Theming and Wallpaper
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(shellCall .. "panel-toggle noctalia/mpvpaper:picker"))

-- Clipboard
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(shellCall .. "panel-toggle clipboard"))

