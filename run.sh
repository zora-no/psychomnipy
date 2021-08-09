

#######
# Start xvfb
Xvfb $DISPLAY :1 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &> xvfb.log &
x11vnc -display $DISPLAY -bg -forever -nopw -quiet -listen localhost -xkb

# Export your display id
export DISPLAY=:1
######

python3 psychopy_docker_test.py

