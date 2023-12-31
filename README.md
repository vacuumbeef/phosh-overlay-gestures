# phosh-overlay-gestures
Additional swipe gestures to use with Phosh using [lisgd](https://git.sr.ht/~mil/lisgd), and quick menu overlay using [eww](https://github.com/elkowar/eww) (also used as a little hack to partially block input on the right edge with blank transparent narrow widget, so the swipes would not be passed to the underlying application)

Made for use with [Droidian port for Poco X3 Pro](https://github.com/droidian-vayu/device-page) and available in it's apt repo, though I think it should work anywhere with Phosh (or maybe even without, nothing Phosh-specific here, maybe only keybinding emulation)

## Dependencies
- [rofi-wayland](https://github.com/lbonn/rofi)
- [lisgd](https://git.sr.ht/~mil/lisgd)
- [eww](https://github.com/elkowar/eww)
- [wtype](https://github.com/atx/wtype)
- [roboto-mono-nerd](https://github.com/manjaro-sway/nerd-fonts-roboto-mono) (I'm not sure I used this exact variation of the font)

## Usage

* LISGD_INPUT_DEVICE variable should be exported pointing your touchscreen device, can be found with `libinput debug-events`. For example:

`export LISGD_INPUT_DEVICE="/dev/input/event4"`

* `phosh-overlay-launch.sh` launches the whole thing
  
### Gestures

<b>Right edge:</b>

* Right-to-Left short swipe - Emulate Escape

* Right-to-Left long swipe - Emulate Alt+F4

* Short vertical swipe up - Toggle Rofi with drun/window/web search modes

* Short vertical swipe down - Toggle the notification drawer

<b>Bottom edge:</b>

* Horizontal swipes - Switch windows back and forth

<b>Bottom left corner:</b>

* Down-Left-to-Up-Right short swipe -  Toggle custom quick menu visibility

<b>Bottom right corner:</b>

* Down-Right-to-Up-Left swipe - Keyboard layout change
