# base image
FROM ubuntu:20.04
FROM python:3

RUN apt-get update
RUN apt-get upgrade -y
# RUN echo "export DISPLAY=:0"  >> /etc/profile
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-opengl
RUN pip3 install psychopy==2021.2
RUN pip3 install psychtoolbox==3.0.17.7
#RUN pip3 install pyglet==1.5.11


# set the working directory in the container
WORKDIR /usr/src/app

# add files to filesystem of the container
COPY psychopy_docker_test.py .

# command to run on container start
CMD ["python", "psychopy_docker_test.py"]

# configure a container that will run as an executable
#ENTRYPOINT ["python3"]
