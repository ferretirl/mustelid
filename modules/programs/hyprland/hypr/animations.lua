--  █████╗ ███╗   ██╗██╗███╗   ███╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
-- ██╔══██╗████╗  ██║██║████╗ ████║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
-- ███████║██╔██╗ ██║██║██╔████╔██║███████║   ██║   ██║██║   ██║██╔██╗ ██║
-- ██╔══██║██║╚██╗██║██║██║╚██╔╝██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
-- ██║  ██║██║ ╚████║██║██║ ╚═╝ ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
-- ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
--------------------------------------------------------------------------

-- Self explanatory
hl.config({
	animations = {
		enabled = true,
	},
})

hl.curve( "water", { 
  type = "bezier", points = { 
    {0.22, 0.9},
    {0.36, 1.0} 
  } 
})
hl.curve( "flow", { 
  type = "bezier", points = { 
    {0.25, 0.1},
    {0.25, 1.0} 
  } 
})
hl.curve( "ripple", { 
  type = "bezier", points = { 
    {0.33, 0.0},
    {0.2, 1.0} 
  } 
})
hl.curve( "stream", { 
  type = "bezier", points = { 
    {0.4, 0.0},
    {0.4, 1.0} 
  } 
})
hl.curve( "cascade", { 
  type = "bezier", points = { 
    {0.19, 1.0},
    {0.22, 1.0} 
  } 
})
hl.curve( "md3_standard", { 
  type = "bezier", points = { 
    {0.2, 0.0},
    {0.0, 1.0} 
  } 
})
hl.curve( "md3_accel", { 
  type = "bezier", points = { 
    {0.3, 0.0},
    {0.8, 0.15} 
  } 
})
hl.curve( "overshot", { 
  type = "bezier", points = { 
    {0.05, 0.9},
    {0.1, 1.05} 
  } 
})
 
hl.animation({ leaf = "windows", enabled = true, speed = 4.0, bezier = "water" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3.5, bezier = "cascade", style = "popin" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.4, bezier = "stream", style = "popin" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1.5, bezier = "flow" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.4, bezier = "water" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.0, bezier = "cascade" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.8, bezier = "ripple" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 2.0, bezier = "water" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 2.4, bezier = "flow" })
hl.animation({ leaf = "layersIn", enabled = false, speed = 2.5, bezier = "overshot", style = "popin 80%" })
hl.animation({ leaf = "layersOut", enabled = false, speed = 2.3, bezier = "md3_accel", style = "popin 90%" })
hl.animation({ leaf = "layers", enabled = false, speed = 2.5, bezier = "md3_standard" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.5, bezier = "flow", style = "slidevert" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3.5, bezier = "water", style = "slidevert" })
hl.animation({ leaf = "border", enabled = false, speed = 3.9, bezier = "water" })
hl.animation({ leaf = "borderangle", enabled = false, speed = 4.5, bezier = "flow" })
 
