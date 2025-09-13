-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/

-- Default beziers
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })
hl.curve("overshoot",      { type = "bezier", points = { {0.5, 0.9}, {0.1, 1.1}     } })

-- Default springs
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })
hl.curve("rubber",         { type = "spring", mass = 1, stiffness = 70,      dampening = 10         })

-- Animations
hl.animation({ leaf = "global",              enabled = true, speed = 3, bezier = "quick"                 })
hl.animation({ leaf = "windows",             enabled = true, speed = 3, spring = "easy",  style = "slide" })
hl.animation({ leaf = "workspaces",          enabled = true, speed = 5, bezier = "quick", style = "slide" })
hl.animation({ leaf = "specialWorkspaceIn",  enabled = true, speed = 2, bezier = "quick", style = "slide top"})
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 2, bezier = "quick", style = "slide bottom"})

-- Ref:
-- global
  -- ↳ windows - styles: slide, popin, gnomed
  --   ↳ windowsIn - window open - styles: same as windows
  --   ↳ windowsOut - window close - styles: same as windows
  --   ↳ windowsMove - everything in between, moving, dragging, resizing.
  -- ↳ layers - styles: slide, popin, fade
  --   ↳ layersIn - layer open
  --   ↳ layersOut - layer close
  -- ↳ fade
  --   ↳ fadeIn - fade in for window open
  --   ↳ fadeOut - fade out for window close
  --   ↳ fadeSwitch - fade on changing activewindow and its opacity
  --   ↳ fadeShadow - fade on changing activewindow for shadows
  --   ↳ fadeGlow - fade on changing activewindow for glow
  --   ↳ fadeDim - the easing of the dimming of inactive windows
  --   ↳ fadeLayers - for controlling fade on layers
  --     ↳ fadeLayersIn - fade in for layer open
  --     ↳ fadeLayersOut - fade out for layer close
  --   ↳ fadePopups - for controlling fade on wayland popups
  --     ↳ fadePopupsIn - fade in for wayland popup open
  --     ↳ fadePopupsOut - fade out for wayland popup close
  --   ↳ fadeDpms - for controlling fade when dpms is toggled
  -- ↳ border - for animating the border's color switch speed
  -- ↳ borderangle - for animating the border's gradient angle - styles: once (default), loop
  -- ↳ shadowangle - for animating the shadow's gradient angle - styles: once (default), loop
  -- ↳ glowangle - for animating the glow's gradient angle - styles: once (default), loop
  -- ↳ workspaces - styles: slide, slidevert, fade, slidefade, slidefadevert
  --   ↳ workspacesIn - styles: same as workspaces
  --   ↳ workspacesOut - styles: same as workspaces
  --   ↳ specialWorkspace - styles: same as workspaces
  --     ↳ specialWorkspaceIn - styles: same as workspaces
  --     ↳ specialWorkspaceOut - styles: same as workspaces
  -- ↳ zoomFactor - animates the screen zoom
  -- ↳ monitorAdded - monitor added zoom animation
