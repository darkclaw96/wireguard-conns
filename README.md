# wireguard-conns
Bash script to list connected clients' names instead of their public keys when using the 'wg' or 'wg show' command

Requires the client names to be added as comments for each Peer in /etc/wireguard/wg0.conf
Example:

[Peer]
'# Client name ( This will be displayed)
PublicKey = <Client public key>
PresharedKey = <Preshared key>
AllowedIPs = 0.0.0.0/32

Usage:
Run the script as sudo
Make an alias in .bashrc, maybe ¯\_(ツ)_/¯

Sample Output:
  
2022-05-09 19:48:53:	Client name1 	 1 minute, 33 seconds ago
2022-05-09 19:48:53:	Client name2	 50 seconds ago
  
2022-05-09 19:48:53:	2 clients connected



Source:
https://www.reddit.com/r/WireGuard/comments/gyzzk1/quick_script_for_a_simplified_wg_show_output/

Modified to work with my current installation of Wireguard.
  wireguard/stable,now 1.0.20210223-1 all 
  wireguard-dkms/stable 1.0.20210219-1 all
  wireguard-tools/stable,now 1.0.20210223-1 armhf
