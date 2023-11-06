#!/bin/bash
if [ -z "$LISGD_INPUT_DEVICE" ]; then
    echo "Empty LISGD_INPUT_DEVICE variable"
    notify-send -u critical "Empty LISGD_INPUT_DEVICE variable" "Set the variable pointing your touchscreen device, can be found with 'libinput debug-events'"
    exit 1
fi
setsid -f eww -c /etc/phosh-overlay-gestures daemon > /dev/null  2>1 &
setsid -f eww -c /etc/phosh-overlay-gestures open right-gesture-block > /dev/null  2>1 &
setsid -f phosh-overlay-gestures-start.sh> /dev/null  2>1
