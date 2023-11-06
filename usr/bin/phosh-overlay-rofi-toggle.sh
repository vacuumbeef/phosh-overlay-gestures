#!/bin/bash

#get rofi pid if it's running
pid=$(ps aux | grep "rofi -config /etc/phosh-overlay-gestures/rofi-config.rasi" | grep -v grep | awk '{ print $2 }')

if [ -z "$pid"]; then
        busctl call --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 SetVisible b true
        rofi -config /etc/phosh-overlay-gestures/rofi-config.rasi -show combi -show-icons -combi-hide-mode-prefix -modes combi -combi-modi "Search:phosh-overlay-rofi-search,window,drun"> /dev/null  2>1 && busctl call --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 SetVisible b false &
        sleep 0.2
        busctl call --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 SetVisible b true
else
        busctl call --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 SetVisible b false
        kill $pid
fi
