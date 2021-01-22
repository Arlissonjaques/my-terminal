#!/bin/sh

echo "Bem vindo Arlisson, vamos instalar suas ferramentas"

echo "Atualiando o sistema e os repositorios"

apt update
apt upgrade

echo "Instalando git..."

apt install git

echo "ok"

echo "Pesonalização do sistema"

PATH_CUSTOMIZATION = "/home/$USER/customization"

mkdir -v -p PATH_CUSTOMIZATION

cd PATH_CUSTOMIZATION && git clone https://github.com/daniruiz/flat-remix

git clone https://github.com/daniruiz/flat-remix-gtk

mkdir -p ~/.icons && mkdir -p ~/.themes

cp -r flat-remix/Flat-Remix* ~/.icons/ && cp -r flat-remix-gtk/Flat-Remix-GTK* ~/.themes/

apt install gnome-tweak-tool fonts-hack-ttf -y
