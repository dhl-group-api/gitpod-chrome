FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo touch /etc/apt/sources.list.d/debian.list && \
    echo "deb http://deb.debian.org/debian buster main" | sudo tee -a /etc/apt/sources.list.d/debian.list && \
    echo "deb http://deb.debian.org/debian buster-updates main" | sudo tee -a /etc/apt/sources.list.d/debian.list && \
    echo "deb http://deb.debian.org/debian-security buster/updates main" | sudo tee -a /etc/apt/sources.list.d/debian.list && \
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DCC9EFBF77E11517 && \
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138 && \
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA8E81B4331F7F50 && \
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A && \
    sudo touch /etc/apt/preferences.d/chromium.pref && \
    echo "Package: *" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "Pin: release a=eoan" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "Pin-Priority: 500" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "Package: *" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "Pin: origin "ftp.debian.org"" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "Pin-Priority: 300" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "# Pattern includes 'chromium', 'chromium-browser' and similarly" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "# named dependencies:" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "Package: chromium*" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "Pin: origin 'ftp.debian.org'" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    echo "Pin-Priority: 700" | sudo tee -a /etc/apt/preferences.d/chromium.pref && \
    sudo apt-get update --allow-releaseinfo-change && \
    sudo apt-get install -yq chromium && \
    sudo apt-get install -y libasound2-dev && \
    sudo apt-get install -y libgtk-3-dev && \
    sudo apt-get install -y libnss3-dev && \
    sudo rm -rf /var/lib/apt/lists/*
