FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo touch /etc/apt/sources.list.d/mario.list && \
    echo "deb http://ftp.debian.org/debian buster main" | sudo tee -a /etc/apt/sources.list.d/mario.list && \
    echo "deb http://ftp.debian.org/debian buster-updates main" | sudo tee -a /etc/apt/sources.list.d/mario.list && \
	echo "deb http://ftp.debian.org/debian-security buster/updates main" | sudo tee -a /etc/apt/sources.list.d/mario.list
