# Image de base
FROM resin/rpi-raspbian:latest

# Installation de base
RUN apt-get update
RUN apt-get install -y ansible \
  git \
  curl \
  python
  
RUN apt-get -y clean

# Install Ansible inventory file
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

# Bash
CMD /bin/bash
