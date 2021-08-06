
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

August 6, 2021
The experiment runs, however, the output goes to xvfb, and doesn't come to the monitor
https://stackoverflow.com/questions/12050021/how-to-make-xvfb-display-visible
