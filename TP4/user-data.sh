#!/bin/bash
# Met à jour les paquets
apt-get update -y

# Installe nginx
apt-get install -y nginx

# Active le service nginx
systemctl enable nginx

# Démarre le service nginx
systemctl start nginx

# Vérifie la réponse HTTP localement
curl http://localhost