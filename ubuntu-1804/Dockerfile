FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
        git \
        openssh-client \
        openssh-server \
        python3-venv \
        sudo \
        systemd-sysv \
        && \
    rm -rf /var/lib/apt/lists/*
RUN useradd -d /home/ansible ansible
COPY 90-ansible /etc/sudoers.d/90-ansible
