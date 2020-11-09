
# Settings
## Key-binding 
### Prerequisites
* You must be installed uim, gnome tweaks 

### How
1. Go to `Settings - Keyboard Shortcuts`
2. disable `Switch to previous/next input source`
3. Go to `Tweaks`
4. Go to `Keyboard & Mouse` tab and press `Additional Layout Options` button.
  * Caps Lock is also a Ctrl. (*Basic*)
  * Alt is swapped with Win (Ctrl-Alt-Super order)
5. Set Overview shortcut to Right super (for Left super + space to switch input source)
6. Go to `Input method` by uim (not default ubuntu input method)
7. Go to Byeoru key binding 1 tab and set byeoru on off to super+space


## Mouse
* Natural Scrolling

## Skip grub
* add `GRUB_DISABLE_OS_PROBER=true` in `/etc/default/grub` and run `sudo update-grub`

## Reference
* https://luckyyowu.tistory.com/409


