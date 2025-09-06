#!/bin/bash

if systemctl --user is-active --quiet docker-desktop; then
	echo "Docker has been already started. Exiting script"
	exit 0
fi

echo "Starting Docker..."
systemctl --user start docker-desktop

echo "Loading Docker GUI. Happy hacking!"
