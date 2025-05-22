setxkbmap pl
xrandr --output DVI-D-0 --rate 60 --mode 1920x1080
xrandr --output HDMI-0 --primary --rate 144 --mode 1920x1080 --right-of DVI-D-0
xrandr --output DP-1 --rate 60 --mode 1920x1080 --right-of HDMI-0

xset dpms 600 900 1200
xset r rate 120 30

sh ~/sh/autostart.sh
