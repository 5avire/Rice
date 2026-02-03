#!/bin/sh

#Clipboard Stuff

export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export WAYLAND_DISPLAY=wayland-1

# Network Manager
pkill nm-applet
(nm-applet) &

# Waybar
pkill waybar
(waybar -c /home/savvy/rice/waybar/config.jsonc -s /home/savvy/rice/waybar/style.css) &

# Notification Daemon
pkill swww-daemon
(swww-daemon) &

# Notification
pkill swaync
(swaync -c /home/savvy/rice/swaync/config.json -s /home/savvy/rice/swaync/style.css) &

# Sway SwayOSD
pkill swayosd-server
(swayosd-server) &

# kdeconnectd
pkill kdeconnectd
(kdeconnectd) &

# BlueMan
pkill blueman-applet
(blueman-applet) &

# Hypridle
pkill hypridle
(hypridle -c /home/savvy/rice/hypr/hypridle.conf) &

# ---- cliphist (safe) ----
pgrep -x wl-paste >/dev/null || {
  wl-paste --type text --watch cliphist store --max-items 25 &
  wl-paste --type image --watch cliphist store --max-items 25 &
}
