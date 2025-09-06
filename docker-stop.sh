#!/bin/bash

if [[ $(systemctl --user is-active docker-desktop) = "inactive" ]]; then
	echo "Docker is already inactive"
else
	echo "Quiting Docker..."
	systemctl --user stop docker-desktop 
fi
