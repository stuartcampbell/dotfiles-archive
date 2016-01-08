#!/bin/sh

# Set my primary monitor for my work computer
if [ "$HOSTNAME" = statler.ornl.gov ]; then
	./screenlayout/set-statler-primary-display.sh &
fi

