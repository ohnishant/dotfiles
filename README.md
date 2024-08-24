# dotfiles

My configuration dotfiles for i3wm setup

## Dependencies

Following are programs needed to experience some core functionalities of this setup:

- rigrep
- lm-sensors
- packer.nvim
- [Wifi Ramp Icon Font](https://github.com/isaif/polybar-wifi-ramp-icons)

## Optional Tweaks

Programs that I like to have to customise and alter common stuff:

- fxappearance
- qt5ct
- lm-sensors
- flameshot
- copyq

## Visudo Lines for brightness buttons

## Allow brightness commands to run without sudo

I keep forgetting how to do this so here

```
ALL ALL=NOPASSWD: /usr/local/bin/brightness
ALL ALL=NOPASSWD: /usr/local/bin/brightness-
ALL ALL=NOPASSWD: /usr/local/bin/brightness+
```

## Acer Webcam Fix
Acer HD User Facing and a bunch of other webcams don't work on linux. Atleast until this fix gets merged into 6.11 and gets released.
Use the compile_module script in [Giuliano's UVC Driver](https://github.com/Giuliano69/uvc_driver-for-Quanta-HD-User-Facing-0x0408-0x4035-).
Also stored in `~/personal_scripts/`.

## Useful Links

- [Xorg Keynames](http://xahlee.info/linux/linux_show_keycode_keysym.html) _Useful for i3 keybinding_
- [CSV Editor](https://www.moderncsv.com/) _CSV Editor_
