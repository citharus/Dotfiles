#!/usr/bin/env bash
rofi_command="rofi -theme ~/.config/rofi/themes/powermenu.rasi"

shutdown=" Shutdown"
reboot=" Restart"
lock=" Lock"
suspend=" Sleep"
logout=" Logout"

options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        sh ~/.scripts/lock.sh
        ;;
    $suspend)
        #mpc -q pause
        #amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        openbox --exit
        ;;
esac

