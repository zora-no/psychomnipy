#!/bin/bash

#docker run --privileged -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v="/dev/:/dev/" -i -t ubuntu_with_nvidia_driver /bin/bash
xhost +
docker run --privileged -e DISPLAY=$DISPLAY -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v="/dev/:/dev/" -i -t ubuntu_with_nvidia_driver bash
