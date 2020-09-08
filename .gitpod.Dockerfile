FROM gitpod/workspace-full-vnc

USER gitpod

COPY resources/debian.list /etc/apt/sources.list.d/debian.list

RUN sudo apt-get -q update
