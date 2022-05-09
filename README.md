# wireguard-conns
Bash script to list connected clients' names instead of their public keys when using the 'wg' or 'wg show' command

Requires the client names to be added as comments for each Peer in /etc/wireguard/wg0.conf

Example:<br />
![image](https://user-images.githubusercontent.com/89162705/167468721-f8373be7-5340-45a3-8941-86670b9d4a61.png)

Usage:<br />
Run the script as sudo<br />
Make an alias in .bashrc, maybe ¯\\_(ツ)_/¯

Sample Output:<br />
![image](https://user-images.githubusercontent.com/89162705/167468970-ef712ece-87a2-488e-b81b-687a1933561c.png)

Source:
https://www.reddit.com/r/WireGuard/comments/gyzzk1/quick_script_for_a_simplified_wg_show_output/

Modified to work with my current installation of Wireguard.

wireguard/stable,now 1.0.20210223-1 all<br />
wireguard-dkms/stable 1.0.20210219-1 all<br />
wireguard-tools/stable,now 1.0.20210223-1 armhf
