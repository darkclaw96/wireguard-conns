# wireguard-conns

Bash script to list connected clients' names instead of their public keys when using the **'wg'** or **'wg show'** command

> Requires the client names to be added as comments for each Peer in **_/etc/wireguard/wg0.conf_**
> 
>Example:
>
>```
>[Peer]
>#<Client_Name1>
>PublicKey = XXXXXXXXXXXXXXXX
>PresharedKey = XXXXXXXXXXXXXXXX
>AllowedIPs = XXXXXXXXXXXXXXXX
>
>[Peer]
>#<Client_Name2>
>PublicKey = XXXXXXXXXXXXXXXX
>PresharedKey = XXXXXXXXXXXXXXXX
>AllowedIPs = XXXXXXXXXXXXXXXX
>```

## Usage
Run the script as sudo[^1]

#### Sample Output:

```
2022-08-08 19:40:08:	<Client_Name1>		 2 days, 21 hours, 41 seconds ago
2022-08-08 19:40:08:	<Client_Name2>		 2 days, 21 hours, 1 minute, 27 seconds ago

2022-08-08 19:40:08:	2 clients connected
```

Updated script based on this [reddit post](https://www.reddit.com/r/WireGuard/comments/gyzzk1/quick_script_for_a_simplified_wg_show_output/).

[^1]: 'wg' & 'wg show' commands require sudo privileges
