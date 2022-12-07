p=1
clear
bucle () {
curl -s https://sms24.me/en/numbers/$numero/1 | grep 'WhatsApp' | cut -c 130-280
let p=$p+1
if [[ $p -gt 200 ]];then
	tput setaf 1;echo "Si no encontraste el code intentalo de nuevo o prueba con otro numero"
	exit
fi
bucle
}
nu () {
curl -s https://sms24.me/en/numbers/page/1 > i && cat i | grep -o '<div class="col-sm-12 col-md-6 col-lg-4"><a href="/en/numbers/[0-9]*" class="callout m-2">' | cut -c 63-74


a=$(shuf -i 1-20 -n 1)
curl -s https://sms24.me/en/numbers/page/$a > i && cat i | grep -o '<div class="col-sm-12 col-md-6 col-lg-4"><a href="/en/numbers/[0-9]*" class="callout m-2">' | cut -c 63-74
}

setterm --foreground green 
echo '

  _   _
 | \ | |
 |  \| |_   _ _ __ ___
 | . ` | | | |  _ ` _ \
 | |\  | |_| | | | | | |
 |_|_\_|\__ _|_|_|_| |_|
 |  _ \ / _` |/ _` |/ _ \
 | |_) | (_| | (_| |  __/
 | .__/ \__,_|\__, |\___|
 | |           __/ |
 |_|          |___/	Hecho por 8d2
'
#no te lo robes max
setterm --foregroun yellow
echo "Numeros disponibles:"
nu

tput setaf 10;echo "Pon aqui el numero que deses (sin comas ni espacio)"
read numero
tput setaf 3 ; echo -e "Pide 2 codes al numero y presiona enter\n(es importante que esperes a que de el code)";
read
tput setaf 10; echo "espera 10 segundos"
sleep 10
echo -e "buscando code... Ten paciencia\nSi no encuentra el code es porque no cayo\n \n(si pasa esto busca otro numero)"
bucle
