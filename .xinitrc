setxkbmap pl
xrandr --output DVI-D-0 --rate 60 --mode 1620x1080
xrandr --output HDMI-0 --rate 144 --mode 1920x1080 --primary --right-of DVI-D-0 

xset dpms 600 900 1200
xset r rate 150 60

while true ; do
        ~/sh/autostart.sh nopa
        dwm
done
