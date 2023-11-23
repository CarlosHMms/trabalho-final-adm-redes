#!/bin/bash

# Instalação do NFS
sudo apt-get update
sudo apt-get install -y nfs-kernel-server

# Diretório a ser compartilhado
shared_directory="/trabalho-final-adm-redes"  
# Adiciona a entrada ao arquivo /etc/exports
echo "$shared_directory *(rw,sync,no_subtree_check,no_root_squash)" | sudo tee -a /etc/exports
