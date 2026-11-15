#!/bin/bash
set -e

# Atualiza os pacotes do Amazon Linux 2023
dnf update -y

# Instala Apache, PHP, unzip e wget
dnf install -y httpd php unzip wget

# Baixa os arquivos institucionais do Lab 267
wget https://aws-tc-largeobjects.s3.us-west-2.amazonaws.com/CUR-TF-100-RESTRT-1/267-lab-NF-build-vpc-web-server/s3/lab-app.zip -O /tmp/lab-app.zip

# Extrai a aplicacao
mkdir -p /var/www/html
unzip -o /tmp/lab-app.zip -d /var/www/html/

# Configura as permissoes
chown -R apache:apache /var/www/html

# Habilita e inicia o Apache
systemctl enable --now httpd
