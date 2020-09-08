FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update
    sudo touch /etc/apt/sources.list.d/mario.list && \
    echo "deb http://ftp.debian.org/debian buster main" | sudo tee -a /etc/apt/sources.list.d/mario.list && \
    echo "deb http://ftp.debian.org/debian buster-updates main" | sudo tee -a /etc/apt/sources.list.d/mario.list && \
    echo "deb http://ftp.debian.org/debian-security buster/updates main" | sudo tee -a /etc/apt/sources.list.d/debian.list
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DCC9EFBF77E11517 && \
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138 && \
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA8E81B4331F7F50 && \
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
