FROM centos:8

RUN yum install -y \
        git \
        openssh-clients \
        openssh-server \
        sudo \
        && \
    yum clean all
RUN useradd -d /home/ansible ansible
COPY 90-ansible /etc/sudoers.d/90-ansible

