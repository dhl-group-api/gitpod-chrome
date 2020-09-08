FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo echo -e "line 1\line 2" >> /etc/apt/sources.list.d/debian.list
    
    
    
    


