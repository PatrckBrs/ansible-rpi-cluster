FROM sdhibit/rpi-raspbian
RUN apt-get -y update

# Install Ansible
RUN apt-get install -y software-properties-common git
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get -y update
RUN apt-get install -y ansible

# Install Ansible inventory file
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts
