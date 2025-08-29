#!/usr/bin/env bash

name_dir="$HOME/Images/Captures"
name_file="$name_dir/screen_$(date +%Y%m%d_%H%M%S)_shot.png"

mkdir -p "$name_dir"

grim "$name_file" && notify-send "ScreenShot !" "$name_file" 
