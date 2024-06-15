#!/usr/bin/env sh

options="Poweroff\nReboot\nLogout"

opt=$(echo -e ${options} | wofi -i --dmenu --prompt="Power menu")

case ${opt} in
	Poweroff)
		loginctl poweroff
		;;
	Reboot)
		loginctl reboot
		;;
	Logout)
		swaymsg exit
		;;
esac
