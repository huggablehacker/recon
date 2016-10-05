# Recon Scan

Gathers the following information, creates directories, and saves them to said directories.
* Whois
* DNS (Host,MX,NS,A)
* NMAP -A

Save the `.sh`, modify the argument's mode with `chmod a+x`
(Note: The directories will be created in the same structure, where the `recon.sh`script lives.)

Usage of this would be:

`./recon.sh <DOMAIN>`
* Example: ./recon.sh google.com 
* Example: ./recon.sh yahoo.com 
* Example: ./recon.sh 8.8.8.8 

Full disclosure: You’ll need `nmap` installed to make this work correctly.
