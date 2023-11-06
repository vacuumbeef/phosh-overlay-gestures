#!/bin/bash

state=$(eww -c /etc/phosh-overlay-gestures get winrev)

if [ "$state" == "false" ]; then
        eww -c /etc/phosh-overlay-gestures open quick-menu
        eww -c /etc/phosh-overlay-gestures update winrev=true
else
        eww -c /etc/phosh-overlay-gestures update winrev=false
        sleep 0.3
        eww -c /etc/phosh-overlay-gestures close quick-menu
fi
