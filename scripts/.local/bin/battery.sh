#!/bin/bash
bat=$(cat /sys/class/power_supply/BAT0/capacity)
printf " ^B6^ $bat "
