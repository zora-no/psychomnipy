# base image
FROM ubuntu:20.04
FROM python:3

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-opengl \
    sudo \
    dpkg-dev \
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

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer

# add files to filesystem of the container
COPY psychopy_docker_test.py .

# command to run on container start
CMD ["python", "psychopy_docker_test.py"]

