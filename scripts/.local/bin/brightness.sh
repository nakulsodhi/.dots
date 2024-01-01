#!/bin/bash

# options do be displayed
option0="two %"
option1="twenty %"
option2="forty %"
option3="sixty %"
option4="eighty %"
option5="hundred %"

# options passed to variable
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5"

selected="$(echo -e "$options" | rofi -lines 5 -dmenu -p "brightness")"
case $selected in
    $option0)
        light -S 2;;
    $option1)
        light -S 20;;
    $option2)
        light -S 40;;
	$option3)
        light -S 60;;
	$option4)
        light -S 80;;
	$option5)
        light -S 100;;
esac
