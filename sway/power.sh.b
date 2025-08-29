#!/usr/bin/env bash

opt=$(printf "Lock\nShutdown\nReboot\nSuspend\nLogout\nAnnuler" | wofi --gtk-dark --dmenu --prompt "Menu Power")

case $opt in
  "Lock")
    swaylock -eFk -i /home/daniel/.config/sway/gcartoon.png -s fill -c 1d1f21 ;;
  "Shutdown")
    swaynag -e bottom -t warning -m 'Shutdown ?' -B 'Yes' 'systemctl poweroff' -s 'Annuler' ;;
  "Reboot")
    swaynag -e bottom -t warning -m 'Reboot ?' -B 'Yes' 'systemctl reboot' -s 'Annuler' ;;
  "Suspend")
    systemctl suspend ;;
  "Logout")
    swaynag -e bottom -t warning -m 'Logout ?' -B 'Yes' 'swaymsg exit' -s 'Annuler' ;;  
  "Annuler")
    exit 0 ;;  
  *)
    exit 1 ;;
esac
