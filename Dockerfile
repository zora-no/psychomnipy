# base image
FROM ubuntu:20.04
FROM python:3

RUN apt-get update
RUN apt-get upgrade -y
#RUN apt-get install -y build-essential

RUN apt-get update && apt-get install -y \
    x11vnc \
    python3 \
    python3-pip \
    python3-opengl \
    xvfb \
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

#RUN wget https://extras.wxpython.org/wxPython4/extras/linux/gtk3/ubuntu-20.04/wxPython-4.1.1-cp38-cp38-linux_x86_64.whl
#RUN pip3 install wxPython-4.1.1-cp38-cp38-linux_x86_64.whl

RUN pip3 install wxPython
RUN pip3 install psychopy==2021.2
RUN pip3 install psychtoolbox==3.0.17.7
#RUN pip3 install pyglet==1.5.11

ENV DISPLAY :1

# set the working directory in the container
WORKDIR /usr/src/app

# add files to filesystem of the container
COPY psychopy_docker_test.py .

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD /run.sh

# command to run on container start
#CMD ["python", "psychopy_docker_test.py"]

# configure a container that will run as an executable
#ENTRYPOINT ["python3"]

