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

# Installation de Node.js à partir du site officiel
RUN curl -LO "https://nodejs.org/dist/v0.12.5/node-v0.12.5-linux-x64.tar.gz" \
&& tar -xzf node-v0.12.5-linux-x64.tar.gz -C /usr/local --strip-components=1 \
&& rm node-v0.12.5-linux-x64.tar.gz

# Ajout du fichier de dépendances package.json
ADD package.json /app/

# Changement du repertoire courant
WORKDIR /app

# Installation des dépendances
RUN npm install

# Ajout des sources
ADD . /app/

# On expose le port 3000
EXPOSE 3000

# On partage un dossier de log
VOLUME /app/log

# On lance le serveur quand on démarre le conteneur
CMD node server.js
#
