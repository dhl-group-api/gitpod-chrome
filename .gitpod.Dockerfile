FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo apt-get install -yq snapd && \
    sudo systemctl restart snapd.service && \
    sudo snap install chromium
