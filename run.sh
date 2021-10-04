#!/bin/sh

COMMAND=/bin/bash
#COMMAND=""

xhost + # allow connections to X server
docker run --privileged -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v="/dev/:/dev/" -i -t ubuntu_with_opensource_drivers $COMMAND
