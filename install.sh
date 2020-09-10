#!/bin/bash


#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"

#directory verification
directory=$(pwd)


echo -e "$purple(*)$blue creando directorios.."
sleep 4
if [ ! -d $directory/numeros ]; then
mkdir $directory/numeros
touch $directory/numeros/numeros.txt
fi
echo -e "$purple(*)$blue Directorios creados.."
sleep 4
echo -e "$purple(*)$blue Instalando paquetes.."
sleep 2

apt-get update && apt-get upgrade -y
apt-get install ruby -y
gem install lolcat
apt-get install figlet -y
apt-get install cowsay -y
apt-get install toilet -y
apt-get install xterm -y
apt-get install git -y
clear
echo -e "$purple(*)$blue Dependencias instaladas..."
sleep 2
echo -e "$purple(*)$blue Clonando repositorio oficial"
sleep 2
cd /tmp/
git clone https://github.com/entynetproject/quack
cd quack
chmod +x install.sh
bash install.sh
echo -e "$purple(*)$blue Quack instalado correctamente.."
sleep 2
clear
cd $directory
echo -e "$purple(*)$blue para enviar flood masivo debe colocar los numeros con codigo de area y pais"
sleep 4
echo -e "$purple(*)$blue coloque sus numeros en $red$directory/numeros/numeros.txt$blue(una por linea)"
sleep 5
echo -e "$purple(*)$blue Lanzando programa.. en 5 segundos.."
sleep 5
chmod  +x smsflood.sh
bash smsflood.sh


