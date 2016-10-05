# Recon Scan
Huggable's Recon Scan

Gathers the following information, creats directories, and saves them to said directories.
* Whois
* DNS (Host,MX,NS,A)
* NMAP -A

Save the .sh
Modify the argument's mode with chmod a+x

Usage of this would be:

`./dns-enum.sh <DOMAIN>`
* Example: ./dns-enum.sh google.com 
* Example: ./dns-enum.sh yahoo.com 
* Example: ./dns-enum.sh 8.8.8.8 

Full disclosure: You’ll need `nmap` installed to make this work correctly.
