FROM gitpod/workspace-full:latest



USER USER root
RUN sudo apt-get update && \
    sudo apt-get install -yq xvfb x11vnc xterm openjfx libopenjfx-java openbox && \
    sudo rm -rf /var/lib/apt/lists/*

USER gitpod
RUN sudo apt-get -q update && \
    sudo apt-get install -yq chromium-browser && \
    sudo rm -rf /var/lib/apt/lists/*
