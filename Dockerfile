FROM ubuntu:24.04
RUN apt-get update
RUN apt-get install -y python3
RUN pip3 install flask


