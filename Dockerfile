FROM ubuntu:latest

RUN apt update
RUN apt install -y curl
RUN apt install -y mc

SHELL ["/bin/bash", "--login", "-i", "-c"]
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
RUN source /root/.bashrc && nvm install 12
SHELL ["/bin/bash", "--login", "-c"]
