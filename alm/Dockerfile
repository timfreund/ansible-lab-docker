FROM timfreund/ansible-lab:ubuntu-1804

ENV PATH="/usr/local/src/ansible-lab-manager/alm/bin:${PATH}"
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

COPY requirements.txt /usr/local/src/ansible-lab-manager/requirements.txt
RUN python3 -m venv /usr/local/src/ansible-lab-manager/alm && \
    pip install -r /usr/local/src/ansible-lab-manager/requirements.txt

USER ansible
WORKDIR /home/ansible/project
