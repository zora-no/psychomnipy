#FROM ubuntu:18.04
FROM ubuntu

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y mesa-utils \
    xserver-xorg-video-all \
    python3 \
    python3-pip

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
    libxtst-dev \
    git

RUN pip3 install --upgrade pip && pip3 install wxPython psychopy==2021.2 psychtoolbox==3.0.17.7

# add files to filesystem of the container
RUN git clone https://github.com/zora-no/eegmanylabs-sergent2005.git

# command to run on container start
CMD ["python3", "eegmanylabs-sergent2005/main.py"]

