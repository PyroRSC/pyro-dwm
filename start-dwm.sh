xrdb -merge ~/.XResources
xrandr --output DP-3 --primary --auto --output HDMI-0 --auto --left-of DP-3
flameshot &
nitrogen --restore &
picom &
dwmblocks &
on_start.sh &
#x11vnc -display :0 -auth guess -forever -shared -bg -usepw -noxdamage -xkb
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY

exec dwm
