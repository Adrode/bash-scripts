#!/bin/bash

status=$(systemctl --user is-active docker-desktop)
echo "docker-desktop status: $status"

if [ "$status" = "active" ]; then
	echo "Docker has been already started. Exiting script"
	exit 0
fi

echo "Starting Docker..."
systemctl --user start docker-desktop

echo "Loading Docker GUI. Happy hacking!"
