#!/bin/sh

echo "Bem vindo Arlisson, vamos instalar suas ferramentas"

echo "Atualiando o sistema e os repositorios"

apt update
apt upgrade

echo "Instalando git..."

apt install git

echo "ok"