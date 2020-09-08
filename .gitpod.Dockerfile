FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    echo -e "deb http://ftp.debian.org/debian buster main\
    deb http://ftp.debian.org/debian buster-updates main\
    deb http://ftp.debian.org/debian-security buster/updates main" >> sudo /etc/apt/sources.list.d/debian.list
    
    
    
    


