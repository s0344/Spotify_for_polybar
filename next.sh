#!/bin/sh

while true;do
	player_status=$(playerctl status 2> /dev/null)

	if [ "$player_status" = "Playing" ]; then
	    echo "" #next icon
	elif [ "$player_status" = "Paused" ]; then
	    echo "" #next icon
	else
	    echo "" #dont put anything here
	fi
	sleep .5 &
	wait
done

