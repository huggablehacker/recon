#!/bin/bash

if [ -z "$1" ]; then
	echo "[*] This is the RECON script."
	echo "[*] Usage: $0 <Enter your target domain, ie google.com> "
	echo "[*] Example: $0 google.com "
	echo "[*] Example: $0 yahoo.com "
	echo "[*] Example: $0 8.8.8.8 "
	exit 0
fi


# Directory Creation #
mkdir $1 
mkdir $1/DNS
mkdir $1/WHOIS
mkdir $1/NMAP
mkdir $1/DNS/$1-ns/
mkdir $1/DNS/$1-mx/
mkdir $1/DNS/$1-host/
mkdir $1/DNS/$1-all/

# DNS #
echo
echo host ns 
host -t ns $1 > $1/DNS/$1-ns/$1.txt
echo
echo host mx
host -t mx $1 > $1/DNS/$1-mx/$1.txt
echo
echo host executive
host www.$1 > $1/DNS/$1-host/$1.txt
echo
echo host a
host -a $1 > $1/DNS/$1-all/$1.txt

# WHOIS #
echo
echo whois 
whois $1 > $1/WHOIS/$1.txt

# NMAP #
echo
echo NMAP -A 
nmap -A $1 > $1/NMAP/$1.txt
echo
echo Go in Peace...
echo
