

#######
# Start xvfb
Xvfb :1 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &> xvfb.log &

# Export your display id
RUN export DISPLAY=:1
######

python3 psychopy_docker_test.py

