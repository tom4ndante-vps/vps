#!/bin/bash
#scrip echo TOM4NDANTE (ivan)
#este script monta el servicio badvpn en automatico y corrige
#problemas de pernisos de path

echo -e "\033[1;33m- - - - -> \033[01;34mSCRIPT PARA MANTENER ACTIVO EL SERVICIO BADVPN SIEMPRE"
echo -e "\033[1;33m #################"
echo -e "\033[1;31m EDITADO X XTOM4NDNTEX / telegram @TOM4NDANTE"
sleep 2

sed -i '13,$d' /etc/rc.local

echo "/bin/badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000 --max-connections-for-client 10 &" >> /etc/rc.local

echo "exit 0" >> /etc/rc.local

sed -i '31,$d' /etc/profile
echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" >> /etc/profile
rm badvpn.sh

