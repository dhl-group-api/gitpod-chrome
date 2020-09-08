FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo touch /etc/apt/sources.list.d/mario.list
    sudo printf "line1\line2" >> sudo /etc/apt/sources.list.d/debian.list
    
    
    
    


