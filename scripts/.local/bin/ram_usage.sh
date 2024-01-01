#!/bin/bash
usage=$(free -h | awk '/^Mem/ { print $3"/"$2 }' | sed s/i//g)
printf " ^B6^ $usage "
