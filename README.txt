The script requires a pre-prepared text file with the IP addresses all on their own line
you can put comments to label them as well, but no other text. You can pass your own
text file with any name as an argument, or you can pass no argument and the script looks
for a file named ips.txt and uses that


Usage: 
bash ipscan.sh
bash ipsacn.sh listofips.txt

sample text file:

# 40 network
40.33.0.20
40.33.0.21

# 10 network
10.0.0.1
10.0.0.2
