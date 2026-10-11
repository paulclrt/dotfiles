--------------------------------------------------
-- Hyprland keybinds config file
-- Contains only keybindings
-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
--
-- Paul Claret
-- Thales SIX
--------------------------------------------------
require("programs")

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

hl.bind(mainMod .. " + return", hl.dsp.exec_cmd(terminal))
-- Kill the process owning the window with a SIGKILL
hl.bind(mainMod .. " + x", hl.dsp.window.kill())
-- Send a graceful request to close the window
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
-- hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + SHIFT + m", hl.dsp.exec_cmd(ipc .. " session lock-and-suspend"))
hl.bind(mainMod .. " + SHIFT + p", hl.dsp.exec_cmd(ipc .. " session lock"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager .. " --new-window"))
hl.bind(mainMod .. " + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
-- hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + I", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + h",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j",  hl.dsp.focus({ direction = "down" }))

-- Resize windows
local resizeUnit = 20
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.resize({ x = resizeUnit, y = 0, relative=true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.resize({ x = -resizeUnit, y = 0, relative=true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.resize({ x = 0, y = -resizeUnit, relative=true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.resize({ x = 0, y = resizeUnit, relative=true }), { repeating = true })


local primary = "DP-1"
local secondary = "HDMI-1"
hl.workspace_rule({ workspace = "1", monitor = primary, default = true})
hl.workspace_rule({ workspace = "2", monitor = primary })
hl.workspace_rule({ workspace = "3", monitor = primary })
hl.workspace_rule({ workspace = "4", monitor = primary })
hl.workspace_rule({ workspace = "5", monitor = primary })
hl.workspace_rule({ workspace = "6", monitor = secondary, default=true })
hl.workspace_rule({ workspace = "7", monitor = secondary })
hl.workspace_rule({ workspace = "8", monitor = secondary })
hl.workspace_rule({ workspace = "9", monitor = secondary })

-- hl.workspace_rule({ workspace = "11", monitor = secondary, default=true })
-- hl.workspace_rule({ workspace = "12", monitor = secondary })
-- hl.workspace_rule({ workspace = "13", monitor = secondary })
-- hl.workspace_rule({ workspace = "14", monitor = secondary })
-- hl.workspace_rule({ workspace = "15", monitor = secondary })
-- hl.workspace_rule({ workspace = "16", monitor = secondary })
-- hl.workspace_rule({ workspace = "17", monitor = secondary })
-- hl.workspace_rule({ workspace = "18", monitor = secondary })
-- hl.workspace_rule({ workspace = "19", monitor = secondary })
-- hl.workspace_rule({ workspace = "20", monitor = secondary })

for i = 1, 10 do
    local code = "code:" .. (i + 9) 
    -- Switch workspaces with mainMod + [0-9]
    hl.bind(mainMod .. " + " .. code, hl.dsp.focus({ workspace = i }))
    -- hl.bind(mainMod .. " + " .. code, hl.dsp.focus({ workspace = "m+" .. tostring(i+10) }))
    
    -- Move window to a different workspace and switch to that workspace with mainMod + SHIFT + [0-9]
    hl.bind(mainMod .. " + CTRL + " .. code, hl.dsp.window.move({ workspace = i, follow = false }))
    -- Move window to a different workspace but keep current workspace with mainMod + CTRL + [0-9]
    hl.bind(mainMod .. " + SHIFT  + " .. code, hl.dsp.window.move({ workspace = i, follow = false }))
end


hl.config({
    binds = {
        workspace_back_and_forth = false
    },
})


-- Fullscreen - Window takes up the entire working space, keeping the margins.
hl.bind(mainMod .. " + CTRL + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
-- Fullscreen - Window takes up the entire screen.
-- hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind("F11", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

-- Screenshot a monitor
hl.bind("PRINT", hl.dsp.exec_cmd(ipc .. "screenshot-fullscreen pick"))
-- Screenshot a region
hl.bind(mainMod .. " +  PRINT", hl.dsp.exec_cmd(ipc .. "screenshot-region"))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
