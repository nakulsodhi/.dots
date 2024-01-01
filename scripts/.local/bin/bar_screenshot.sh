#!/bin/bash
case $BUTTON in 
    1) maim -s | tee ~/screenshots/$(date +%F-%H_%M_%S).png | xclip -selection clipboard -t image/png
esac

