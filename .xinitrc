setxkbmap pl
xrandr --output eDP-1 --rate 60 --mode 1366x768

xset dpms 600 900 1200
xset r rate 60

while true ; do
        ~/sh/autostart.sh nopa
        dwm
done
