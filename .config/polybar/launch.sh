#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR=VGA1 polybar mybar &
MONITOR=LVDS1 polybar mybar &
# MONITOR=HDMI3 polybar mybar &
echo "Bars launched..."
