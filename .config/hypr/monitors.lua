--------------------------------------------------
-- Hyprland monitors config file.
-- contains only monitors and graphics elements
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
--
-- Paul Claret
-- Thales SIX
--------------------------------------------------

hl.monitor({
    output   = "DP-1",
    mode     = "1920x1080",
    position = "0x0",
    scale    = "1",
})

hl.monitor({
    output   = "HDMI-1",
    mode     = "1920x1080",
    position = "1920x0",
    scale    = "1",
})
