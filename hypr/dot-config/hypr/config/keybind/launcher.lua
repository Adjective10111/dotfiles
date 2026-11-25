hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(launchPrefix .. TERMINAL))
hl.bind("CONTROL + SHIFT + Escape", hl.dsp.exec_cmd(launchPrefix .. TERMINAL .. " -a 'btop' -T 'BTOP' btop"))

hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(launchPrefix .. "rofi-rbw"))

