
# psychomnipy
Platform Independant Psychopy for High Reproducibility

### To Build
`sudo docker build -t psychomnipy .`

### To Run
`sudo docker run -it psychomnipy`

### Progress

August 4, 2021
It appears that the problem si because of psychopy running inside docker and not being able to detect the existence of display hardware.
The remedy, appears to be to use Xvfb, which "is an X server that can run on machines with no display hardware and no physical input devices". [src](https://www3.physnet.uni-hamburg.de/physnet/Tru64-Unix/HTML/MAN/MAN1/0554___X.HTM)

Very important read: https://linuxmeerkat.wordpress.com/2014/10/17/running-a-gui-application-in-a-docker-container/

#### August 6, 2021

The experiment runs, however, the output goes to xvfb, and doesn't come to the monitor
http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/   [please try first]
https://stackoverflow.com/questions/12050021/how-to-make-xvfb-display-visible

#### August 8, 2021

- Another good read: http://wiki.ros.org/docker/Tutorials/GUI
- My tries using the approach from the first URL (using their, and others', example code) all failed with `Error: cannot open display: $DISPLAY`
- Maybe it's worth to check out x11docker: https://github.com/mviereck/x11docker 
- The second URL, using x11vnc (adding code below to run.sh): experiment runs, but still no output
```
Xvfb $DISPLAY :1 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &> xvfb.log &
x11vnc -display $DISPLAY -bg -forever -nopw -quiet -listen localhost -xkb
  ```

#### August 9th

The experiment runs now, but on a Linux machine with the `$DISPLAY` environment variable and xserver.

This tutorial needs to be tried on Windows machine to test if it can be used on Windows machine as well: https://dev.to/darksmile92/run-gui-app-in-linux-docker-container-on-windows-host-4kde

