#!/bin/bash

DOCK_LOCK="$HOME/.config/ml4w/settings/dock-disabled"
LAUNCH="$HOME/.config/nwg-dock-hyprland/launch.sh"

if [ -f "$DOCK_LOCK" ]; then
    rm "$DOCK_LOCK"
    pkill -f nwg-dock-hyprland
    sleep 0.5
    "$LAUNCH" &
else
    touch "$DOCK_LOCK"
    pkill -f nwg-dock-hyprland
fi

