#!/usr/bin/env sh

# Terminate already running flameshot
killall -q flameshot

# Wait until the processes have been shut down
while pgrep -x flameshot >/dev/null; do sleep 1; done

# Launch flameshot
/usr/bin/flameshot &
