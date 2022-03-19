#!/bin/sh

if [ $# -eq 0 ]; then
        echo "[off/on]"
        exit
fi

if [ "$1" = "on" ]; then
        pactl load-module module-loopback latency_msec=1
else
        pactl unload-module module-loopback
fi
