#!/bin/bash
#
# Detta script samlar in systeminformation - RECON
#
# Kan användas för följande attacker:
# [Skriv möjliga attacker]
#
# Author: Sanna Rytilahti
# Last Update: 2025-12-14


echo "Välkommen till RECON script för att kontrollera en Linux-miljö"

echo
echo "=== SYSTEMINFO ==="
uname -a

echo
echo "=== AKTUELL ANVÄNDARE ==="
echo $USER

echo
echo "=== INLOGGADE ANVÄNDARE ==="
who

echo
echo "=== ANVÄNDARE MED SHELL ==="
grep "sh$" /etc/passwd

echo
echo "=== NÄTVERK ==="
ip a | grep inet

echo
echo "=== OPERATIVSYSTEM ==="
cat /etc/os-release

echo
echo "=== RAM-ANVÄNDNING ==="
free -h
 
echo
echo "=== CPU-ARKITEKTUR ==="
lscpu

echo
echo "=== SHELL-KONTON ==="
cat /etc/passwd grep "sh$"

echo
echo "=== PRIVAT IP ==="
ip a

echo
echo "=== PUBLIK IP- OCH PLATSINFO ==="
curl https://ipapi.co/json/

echo
echo "=== ÖPPNA PORTAR ==="
ss -tuln

echo
echo "=== PROCESSER OCH RESURSANVÄNDNING ==="
top

echo
echo "=== SLUT PÅ KONTROLL ==="


 





