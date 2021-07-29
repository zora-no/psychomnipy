# base image
FROM ubuntu:20.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip
RUN pip3 install psychopy==2021.2
RUN pip3 install psychtoolbox==3.0.17.7

# set the working directory in the container
WORKDIR /usr/src/app

# add files to filesystem of the container
COPY psychopy_docker_test.py .

# command to run on container start
CMD ["psychopy_docker_test.py"]

# configure a container that will run as an executable
ENTRYPOINT ["python3"]