#!/bin/bash

script_name=$(basename "$0")

# Count the instances
instance_count=$(ps aux | grep -F "$script_name" | grep -v grep | grep -v $$ | wc -l)

if [ $instance_count -gt 1 ]; then
    sleep $instance_count
fi

pacman_update_count=$(checkupdates --nocolor | wc -l)
aur_update_count=$(yay -Qum | wc -l)
flatpak_update_count=$(flatpak remote-ls --updates | wc -l)

updates=$((pacman_update_count + aur_update_count + flatpak_update_count))

threshhold_green=0
threshhold_yellow=25
threshhold_red=100

# ----------------------------------------------------- 
# Output in JSON format for Waybar Module custom-updates
# ----------------------------------------------------- 

css_class="green"

if (( $updates > $threshhold_yellow )); then
    css_class="yellow"
fi

if (( $updates > $threshhold_red )); then
    css_class="red"
fi

if (( $updates > $threshhold_green )); then
    printf '{"text": "%s", "alt": "%s", "class": "%s"}' "$updates" "$updates" "$css_class"
else
    printf '{"text": "0", "alt": "0", "class": "hide"}'
fi