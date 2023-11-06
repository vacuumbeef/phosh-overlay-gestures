#!/bin/bash

#First lisgd instance
lisgd -r 15 -d "$LISGD_INPUT_DEVICE" -m 400 \
        `#Down-Up from the right edge swipe to toggle Rofi menu`\
        -g "1,DU,R,*,R,setsid -f phosh-overlay-rofi-toggle.sh ; fbcli -E bell-terminal" \
        `#Up-Down from the right edge swipe to toggle notification drawer`\
        -g "1,UD,R,*,R,setsid -f wtype -M logo v -m logo" \
        `#Right-to-Left on the bottom swipe to switch windows forward`\
        -g "1,RL,B,*,R,setsid -f wtype -M alt -P tab -m alt -p tab ; fbcli -E bell-terminal" \
        `#Left-to-Right on the bottom swipe to switch windows backwards`\
        -g "1,LR,B,*,R,setsid -f wtype -M alt -M shift -P tab -m alt -m shift -p tab ; fbcli -E bell-terminal" \
        `#Down-Right-to-Up-Left from the right bottom corner swipe to switch keyboard layout`\
        -g "1,DRUL,BR,*,P,setsid -f wtype -M logo -P space -m logo -p space ; fbcli -E bell-terminal" \
        `#Left-to-Right from the right edge long swipe to close the active window`\
        -g "1,RL,R,L,R,setsid -f fbcli -E bell-terminal ; wtype -M alt -P F4 -m alt -p F4" \
        `#Down-Left-to-Up-Right from the left bottom corner swipe to toggle quick menu visibility` \
        -g "1,DLUR,BL,*,P,setsid -f phosh-overlay-menu-toggle.sh ; fbcli -E bell-terminal" &

#Second lisgd instance to make gestures on the same edge and same direction working                    
lisgd -m 150 -r 25 -d "$LISGD_INPUT_DEVICE" \
        `#Right-to-Left from the right edge short swipe to emulate Escape button press`\
        -g "1,RL,R,S,P,setsid -f wtype -P escape -p escape ; fbcli -E bell-terminal" \
        `#Up-Right-to-Bottom-Left from the right edge short swipe to emulate Escape button press`\
        -g "1,URDL,R,S,P,setsid -f wtype -P escape -p escape ; fbcli -E bell-terminal" \
