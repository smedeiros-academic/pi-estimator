FROM ubuntu:18.04

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install python3

# if /code does not exist, it will make that folder
COPY pi.py /code/pi.py

RUN chmod +rx /code/pi.py

ENV PATH "/code:$PATH"

