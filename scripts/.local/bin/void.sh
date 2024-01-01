#!/bin/bash

case $BUTTON in 
    1) rofi -show drun -show-emojis ;;
    2) brightness.sh ;;
    3) st -e xkill 
esac
