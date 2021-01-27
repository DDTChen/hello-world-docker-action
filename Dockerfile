# Container image that runs your code
FROM node:12.20.1-slim

RUN apt-get -y update
RUN apt-get -y install git

RUN sed -i ~/.profile -e 's/mesg n || true/tty -s \&\& mesg n/g'