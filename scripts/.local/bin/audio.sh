#!/bin/bash
level=$(pamixer --get-volume)
volHuman=$(pamixer --get-volume-human)
[ "$volHuman" = "muted" ] && echo "^B4^ 󰖁 " && exit 

case 1 in 
    $((level >= 70)) )icon="^B4^ 墳";;
    $((level >= 20)) )icon="^B4^ " ;;
    $((level >= 1)) ) icon="^B4^ 󰕿" ;;
	* ) echo "^B4^ 󰖁 " && exit ;;
esac

printf " $icon ^B6^ $level "
