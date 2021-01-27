# Container image that runs your code
FROM node:12.20.1-slim

RUN apt-get -y update
RUN apt-get -y install git

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]