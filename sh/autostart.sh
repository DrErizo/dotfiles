#!/bin/sh

xrandr --output DP-1 --rate 144 --mode 1920x1080 --right-of HDMI-1
xrandr --output HDMI-1 --rate 144 --mode 1920x1080

killall dwmblocks ; dwmblocks &
killall nitrogen ; nitrogen --restore &
killall volumeicon ; volumeicon &
killall flameshot ; flameshot &
killall polkit-gnome-authentication-agent-1 ; /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
killall dunst ; dunst &

if [ $@ > 0 ]
then
        if [ "$1" == "nopa" ]
        then
		exit
        else
                pulseaudio --kill ; sleep 1 ; pulseaudio --start
        fi
else
                pulseaudio --kill ; sleep 1 ; pulseaudio --start
fi
