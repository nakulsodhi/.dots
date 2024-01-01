#!/bin/bash
name=$(date +%F-%Hh%Mm%Ss_grim)
grim -g "$(slurp -d)"  - | swappy -f - -o - | tee ~/screenshots/$name.png | wl-copy -t image/png
