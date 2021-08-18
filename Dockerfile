FROM ubuntu

RUN apt-get update
RUN apt-get install -y mesa-utils
RUN apt-get install -y xserver-xorg-video-all

RUN apt-get install -y python3
RUN apt-get install -y python3-pip

RUN apt-get install -y dpkg-dev \
    build-essential \
    freeglut3-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libgstreamer-plugins-base1.0-dev \
    libgtk-3-dev \
    libjpeg-dev \
    libnotify-dev \
    libpng-dev \
    libsdl2-dev \
    libsm-dev \
    libtiff-dev \
    libwebkit2gtk-4.0-dev \
    libxtst-dev

RUN pip3 install wxPython
RUN pip3 install psychopy==2021.2
RUN pip3 install psychtoolbox==3.0.17.7

#USER psychophysicist
#ENV HOME /home/psychophysicist

# add files to filesystem of the container
COPY psychopy_docker_test.py .

# command to run on container start
CMD ["python", "psychopy_docker_test.py"]

