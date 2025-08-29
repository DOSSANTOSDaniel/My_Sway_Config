#!/usr/bin/env bash

opt=$(printf "Lock\nShutdown\nReboot\nSuspend\nLogout\nAnnuler" | wofi --gtk-dark --dmenu --prompt "Menu Power")

snar='/home/daniel/.swaynag/config'

case $opt in
  "Lock")
    swaylock ;;
  "Shutdown")
    swaynag --config $snar -t warning -m 'Shutdown ?' -B 'Yes' 'systemctl poweroff' ;;
  "Reboot")
    swaynag --config $snar -t warning -m 'Reboot ?' -B 'Yes' 'systemctl reboot' ;;
  "Suspend")
    systemctl suspend ;;
  "Logout")
    swaynag --config $snar -t warning -m 'Logout ?' -B 'Yes' 'swaymsg exit' ;;  
  "Annuler")
    exit 0 ;;  
  *)
    exit 1 ;;
esac
