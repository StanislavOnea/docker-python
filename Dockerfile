FROM ubuntu:20.04


LABEL "Maintainer"="stanonea"

RUN apt-get update -y && apt-get install -y \
    python3 \
    python3-pip \
    && apt-get clean


RUN apt-get install -y iputils-ping

RUN apt-get install -y vim

ADD . /usr/local/docker-git-python3

CMD ["python3", "/usr/local/docker-git-python3/main.py"]