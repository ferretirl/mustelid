--  █████╗ ██████╗ ██████╗ ███████╗ █████╗ ██████╗  █████╗ ███╗   ██╗ ██████╗███████╗
-- ██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔════╝██╔════╝
-- ███████║██████╔╝██████╔╝█████╗  ███████║██████╔╝███████║██╔██╗ ██║██║     █████╗
-- ██╔══██║██╔═══╝ ██╔═══╝ ██╔══╝  ██╔══██║██╔══██╗██╔══██║██║╚██╗██║██║     ██╔══╝
-- ██║  ██║██║     ██║     ███████╗██║  ██║██║  ██║██║  ██║██║ ╚████║╚██████╗███████╗
-- ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝
-------------------------------------------------------------------------------------
---

hl.config({
  general = {
    gaps_in = 10,
    gaps_out = 50,
    col = {
      active_border = {
        colors = {
          "rgba(f6b26bff)",
          "rgba(ffe597ff)",
          "rgba(ffffffff)",
          "rgba(86c8ffff)",
          "rgba(5b96faff)",
        },
        angle = 90,
      },
      inactive_border = "rgba(1a1a1aaa)",
    },
    border_size = 3,
    allow_tearing = false,
    layout = "scrolling",
  },

  decoration = {
    rounding = 9,
    rounding_power = 3,
    active_opacity = 1.0,
    inactive_opacity = 1.0,

    shadow = {
      enabled = false,
      range = 1,
      render_power = 1,
      color = 0xf4346bee,
      color_inactive = 0x000000ee,
    },

    blur = {
      enabled = true,
      xray = false,
      special = false,
      new_optimizations = true,
      size = 3,
      passes = 2,
      brightness = 1,
      noise = 0.05,
      contrast = 0.89,
      vibrancy = 0.1,
      vibrancy_darkness = 0.5,
      popups = false,
      popups_ignorealpha = 0.6,
      input_methods = true,
      input_methods_ignorealpha = 0.8
    },
  },
})
