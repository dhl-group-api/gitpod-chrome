FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo touch /etc/apt/sources.list.d/mario.list && \
    echo 'line1' | sudo tee -a /etc/apt/sources.list.d/mario.list
