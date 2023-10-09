FROM ubuntu:22.04

RUN apt update -y && \
    apt install -y \
      apt-transport-https \
      python3.10-venv \
      gnupg \
      man \
      make \
      less \
      curl \
      && \
    apt clean all

RUN curl https://get.modular.com | \
    MODULAR_AUTH=mut_250e342c1dfa4e95a2cd2e5cd949c873 \
    sh -

RUN modular install mojo
