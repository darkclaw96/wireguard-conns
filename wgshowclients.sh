#!/usr/bin/env bash
# lists connected vpn users
set -euo pipefail
DATE=$(date +%Y-%m-%d\ %H:%M:%S) # Define Date & Time format
number=0 # Variable to count clients
for connected in $(wg | grep -B2 endpoint | grep peer | awk '{print $2}') #get all public keys from wg output and store them in the variable 'connected'
do
  # Read client name from /etc/wireguard/wg0.conf
  client=$(grep -B2 $connected /etc/wireguard/wg0.conf|grep -v Peer| grep -v Public | awk -F '#' '{print $2}')
  # Get connection time
  last_handshake=$(wg|grep -A4 $connected|grep latest|awk -F':' '{print $2}')
  # Display client name & connection time
  echo -e "${DATE}:\t$client \t$last_handshake"
  # Count connected clients
  number=$(expr $number + 1)
done

echo -e "\n${DATE}:\t$number clients connected\n"
