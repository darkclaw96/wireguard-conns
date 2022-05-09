# wireguard-conns
Bash script to list connected clients' names instead of their public keys when using the 'wg' or 'wg show' command

Requires the client names to be added as comments for each Peer in /etc/wireguard/wg0.conf

Example:<br />
![Screenshot from 2022-05-09 20-09-53](https://user-images.githubusercontent.com/89162705/167471857-f63dc8a9-e019-428f-be6f-048c7e4855a8.png)

Usage:<br />
Run the script as sudo<br />
Make an alias in .bashrc, maybe ¯\\_(ツ)_/¯

Sample Output:<br />
![Screenshot from 2022-05-09 20-11-41](https://user-images.githubusercontent.com/89162705/167471889-7cd20329-7012-43b3-98ce-ca1d2c5f6a02.png)


Source:
https://www.reddit.com/r/WireGuard/comments/gyzzk1/quick_script_for_a_simplified_wg_show_output/

Modified to work with my current installation of Wireguard.

wireguard/stable,now 1.0.20210223-1 all<br />
wireguard-dkms/stable 1.0.20210219-1 all<br />
wireguard-tools/stable,now 1.0.20210223-1 armhf
