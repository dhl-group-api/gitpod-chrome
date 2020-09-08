FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    printf -e "line1\line2" >> sudo /etc/apt/sources.list.d/debian.list
    
    
    
    


