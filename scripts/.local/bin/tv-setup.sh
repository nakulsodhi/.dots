#!/bin/bash


xrandr --newmode "1920x1080_60" 173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode eDP1 "1920x1080_60" 
xrandr --output eDP1 --mode "1920x1080_60" --output HDMI1 --auto --same-as eDP1
