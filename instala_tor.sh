#!/bin/bash
#INÍCIO INSTALAÇÃO TOR HIDDEN SERVICE ORIGINAL DO TOR PROJECT ADAPTADO AO TORGHOST
#Visite https://support.torproject.org/apt/ para checar se mudou algo nos requisitos de instalação e modifique o código do script!

echo "TOR from tor project"
echo "ATENÇÃO:"
echo "Visite https://support.torproject.org/apt/ para checar se mudou algo nos requisitos de instalação e modifique o código do script se necessário"
echo ""
echo ""
echo "sudo apt install apt-transport-https"
sudo apt install apt-transport-https
echo "sudo apt update"
sudo apt update
echo ""
echo "Criando arquivo para tor com touch /etc/apt/sources.list.d/tor.list"
echo ""
sudo touch /etc/apt/sources.list.d/tor.list
echo ""
echo "Adicionando repositórios do tor project criptografados com pgp"
echo ""
echo "sudo echo deb     [signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org bullseye main >> /etc/apt/sources.list.d/tor.list"
echo ""
sudo echo "deb     [signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org bullseye main" >> /etc/apt/sources.list.d/tor.list
echo ""
echo "sudo echo deb-src [signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org bullseye main >> /etc/apt/sources.list.d/tor.list"
echo ""
sudo echo "deb-src [signed-by=/usr/share/keyrings/tor-archive-keyring.gpg] https://deb.torproject.org/torproject.org bullseye main" >> /etc/apt/sources.list.d/tor.list
echo ""
echo "BAIXANDO CHAVE PGP wget -O- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --dearmor | tee /usr/share/keyrings/tor-archive-keyring.gpg >/dev/null"
sudo wget -O- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --dearmor | tee /usr/share/keyrings/tor-archive-keyring.gpg >/dev/null
echo ""
echo "sudo apt update"
sudo apt update
echo ""
echo "sudo apt-get install tor deb.torproject.org-keyring python3-pip -y "
sudo apt-get install tor deb.torproject.org-keyring 
echo ""
echo "_______________________________________________________________________________________________________________________________________________________________________________________";
echo "ATENÇÃO: Fazendo backup do arquivo torrc original para a pasta torrc_original que será criada em /etc/tor/torrc_original";
echo "Caso os scripts tor-router, parar-tor-router, iniciator, parator, tor-bridger, parator-bridger e outros similares não funcionarem, coloque o arquivo original torrc que ficará localizado em /etc/tor/torrc_original na pasta /etc/tor para tentar reparar o funcionamento dos scripts";
echo "_______________________________________________________________________________________________________________________________________________________________________________________";
echo "Criando pasta /etc/tor/torrc_original para guardar backup torrc original...;";
sudo mkdir /etc/tor/torrc_original;
echo "Fazendo backup..."
echo "sudo cp -r /etc/tor/torrc /etc/tor/torrc_original";
sudo cp -r /etc/tor/torrc /etc/tor/torrc_original/torrc.bak
echo "Faça mais backups desse arquivo em outros lugares!";


#FIM INSTALAÇÃO TOR HIDDEN SERVICE ORIGINAL DO TOR PROJECT


