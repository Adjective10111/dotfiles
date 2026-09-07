-- Keyboard
hl.bind("SUPER + CONTROL + SHIFT + ALT + L", hl.dsp.exec_cmd("hyprctl switchxkblayout all next"))

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(shellCall .. "brightness-up"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(shellCall .. "brightness-down"), { repeating = true })
hl.bind(mainMod .. " + XF86AudioRaiseVolume", hl.dsp.exec_cmd(shellCall .. "brightness-up"), { locked = true, repeating = true })
hl.bind(mainMod .. " + XF86AudioLowerVolume", hl.dsp.exec_cmd(shellCall .. "brightness-down"), { locked = true, repeating = true })

-- Audio
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(shellCall .. "volume-up"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(shellCall .. "volume-down"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(shellCall .. "volume-mute"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(shellCall .. "mic-mute"), { locked = true, repeating = true })

-- Media
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(shellCall .. "media play"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(shellCall .. "media pause"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(shellCall .. "media next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(shellCall .. "media previous"), { locked = true })

