#!/bin/sh

while true;do
	player_status=$(playerctl status 2> /dev/null)

	if [ "$player_status" = "Playing" ]; then
	    echo "" # pause icon here
	elif [ "$player_status" = "Paused" ]; then
	    echo "" # play icon here
	else
	    echo "" # nothing here
	fi
	sleep .5 &
	wait
done

