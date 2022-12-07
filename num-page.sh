clear
p=0
Sms24 () {
curl -s https://sms24.me/en/numbers/$numero/$p | grep 'WhatsApp' | cut -c 124-241
let p=$p+1
if [[ $p -gt 200 ]];then
	tput setaf 1;echo "Si no encontraste el code intentalo de nuevo o prueba con otro numero"
    exit
fi
Sms24
}
TempNumber () {
curl -s "https://www.temp-number.com/inbox.php?country=United%20Kingdom&no=$numero&in=Uk" | grep '<div class="sms-text">233998'
let p=$p+1
if [[ $p -gt 200 ]];then
	tput setaf 1;echo "Si no encontraste el code intentalo de nuevo o prueba con otro numero"
    exit
fi
TempNumber
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

setterm --foreground yellow 
echo "Escoge que pagina deseas usar
      (1)Sms24      (2)TempNumber
      (3)TempoNun   (4)MyTempsms
      (5)ReceiveSms
(se recomienda la opcion 1)"
tput setaf 10
while true; do
    read -p "Seleccione una opción de 1 a 5: " op
    case $op in
        [1]* ) echo "Numeros recientes:";curl -s https://sms24.me/en/numbers/page/1 > i && cat i | grep -o '<div class="col-sm-12 col-md-6 col-lg-4"><a href="/en/numbers/[0-9]*" class="callout m-2">' | cut -c 63-74;echo "Escribe el numero que deseas: (sin comas)";tput setaf 1;read numero;tput setaf 10;echo -e"Buscando code... ten paciencia (Si despues de un rato no ha aparecido,\nes que no se recibio el code";Sms24; break;;
        [2]* ) echo "Numeros recientes:";curl -s https://sms24.me/en/numbers/page/5 > i && cat i | grep -o '<div class="col-sm-12 col-md-6 col-lg-4"><a href="/en/numbers/[0-9]*" class="callout m-2">' | cut -c 63-74;echo "Escribe el numero que deseas: (sin comas)";tput setaf 1;read numero;tput setaf 10;echo -e "Buscando code... ten paciencia (Si despues de un rato no ha aparecido,\nes que no se recibio el code";Sms24; break;; 
        [3]* ) echo "Numeros recientes:";curl -s https://sms24.me/en/numbers/page/10 > i && cat i | grep -o '<div class="col-sm-12 col-md-6 col-lg-4"><a href="/en/numbers/[0-9]*" class="callout m-2">' | cut -c 63-74;echo "Escribe el numero que deseas: (sin comas)";tput setaf 1;read numero;tput setaf 10;echo -e "Buscando code... ten paciencia (Si despues de un rato no ha aparecido,\nes que no se recibio el code";Sms24; break;;
        [4]* ) echo "Numeros recientes:";curl -s https://sms24.me/en/numbers/page/15 > i && cat i | grep -o '<div class="col-sm-12 col-md-6 col-lg-4"><a href="/en/numbers/[0-9]*" class="callout m-2">' | cut -c 63-74;echo "Escribe el numero que deseas: (sin comas)";tput setaf 1;read numero;tput setaf 10;echo -e "Buscando code... ten paciencia (Si despues de un rato no ha aparecido,\nes que no se recibio el code";Sms24; break;;
        [5]* ) echo "Numeros recientes:";curl -s https://sms24.me/en/numbers/page/20 > i && cat i | grep -o '<div class="col-sm-12 col-md-6 col-lg-4"><a href="/en/numbers/[0-9]*" class="callout m-2">' | cut -c 63-74;echo "Escribe el numero que deseas: (sin comas)";tput setaf 1;read numero;tput setaf 10;echo -e "Buscando code... ten paciencia (Si despues de un rato no ha aparecido,\nes que no se recibio el code"Sms24; break;;
        * ) echo "Opcion incorrecta. Seleccione una Opción de 1 a 5: ";;
    esac
done
#si eres programador y entiendes lo que hice arriba, no me juzgues tenia pereza xddddd
