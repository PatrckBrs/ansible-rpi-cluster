# Image de base
FROM ubuntu:14.04

# Installation de curl avec apt-get
RUN apt-get update
RUN apt-get install -y curl

# Install Ansible
RUN apt-get install -y software-properties-common git
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible
RUN apt-get -y clean

# Install Ansible inventory file
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

# Bash
CMD /bin/bash
