ipconfig /all
Configuration IP de Windows

   Nom de l’hôte . . . . . . . . . . : DESKTOP-5BM3SUL
   Suffixe DNS principal . . . . . . :
   Type de noeud. . . . . . . . . .  : Hybride
   Routage IP activé . . . . . . . . : Non
   Proxy WINS activé . . . . . . . . : Non
   Liste de recherche du suffixe DNS.: auvence.co

Carte Ethernet Ethernet :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :
   Description. . . . . . . . . . . . . . : Realtek PCIe GBE Family Controller ###########################nom de la carte ethernet
   Adresse physique . . . . . . . . . . . : 98-28-A6-27-D5-93 ################adresse mac
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui

Carte Ethernet Ethernet 2 :

   Suffixe DNS propre à la connexion. . . :
   Description. . . . . . . . . . . . . . : VirtualBox Host-Only Ethernet Adapter
   Adresse physique . . . . . . . . . . . : 0A-00-27-00-00-10
   DHCP activé. . . . . . . . . . . . . . : Non
   Configuration automatique activée. . . : Oui
   Adresse IPv6 de liaison locale. . . . .: fe80::3d27:2f72:e101:9c45%16(préféré)
   Adresse IPv4. . . . . . . . . . . . . .: 192.168.56.1(préféré)
   Masque de sous-réseau. . . . . . . . . : 255.255.255.0
   Passerelle par défaut. . . . . . . . . :
   IAID DHCPv6 . . . . . . . . . . . : 772407335
   DUID de client DHCPv6. . . . . . . . : 00-01-00-01-23-56-BC-A9-98-28-A6-27-D5-93
   Serveurs DNS. . .  . . . . . . . . . . : fec0:0:0:ffff::1%1
                                       fec0:0:0:ffff::2%1
                                       fec0:0:0:ffff::3%1
   NetBIOS sur Tcpip. . . . . . . . . . . : Activé

Carte réseau sans fil Connexion au réseau local* 2 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :
   Description. . . . . . . . . . . . . . : Microsoft Wi-Fi Direct Virtual Adapter
   Adresse physique . . . . . . . . . . . : 48-A4-72-5F-39-B8
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui

Carte réseau sans fil Connexion au réseau local* 3 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :
   Description. . . . . . . . . . . . . . : Microsoft Wi-Fi Direct Virtual Adapter #2
   Adresse physique . . . . . . . . . . . : 4A-A4-72-5F-39-B7
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui

Carte réseau sans fil Wi-Fi :

   Suffixe DNS propre à la connexion. . . : auvence.co
   Description. . . . . . . . . . . . . . : Intel(R) Wireless-AC 9560 160MHz ############################nom de la carte wifi
   Adresse physique . . . . . . . . . . . : 48-A4-72-5F-39-B7 ###########################adresse mac
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui
   Adresse IPv6 de liaison locale. . . . .: fe80::14b3:b401:fc37:aec0%3(préféré)
   Adresse IPv4. . . . . . . . . . . . . .: 10.33.1.84(préféré) #####################################adresse ip wifi
   Masque de sous-réseau. . . . . . . . . : 255.255.252.0
   Bail obtenu. . . . . . . . . . . . . . : jeudi 16 janvier 2020 08:54:52
   Bail expirant. . . . . . . . . . . . . : jeudi 16 janvier 2020 10:24:49
   Passerelle par défaut. . . . . . . . . : 10.33.3.253
   Serveur DHCP . . . . . . . . . . . . . : 10.33.3.254
   IAID DHCPv6 . . . . . . . . . . . : 55092338
   DUID de client DHCPv6. . . . . . . . : 00-01-00-01-23-56-BC-A9-98-28-A6-27-D5-93
   Serveurs DNS. . .  . . . . . . . . . . : 10.33.10.20
                                       10.33.10.2
                                       8.8.8.8
                                       8.8.4.4
   NetBIOS sur Tcpip. . . . . . . . . . . : Activé

Carte Ethernet Connexion réseau Bluetooth :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :
   Description. . . . . . . . . . . . . . : Bluetooth Device (Personal Area Network)
   Adresse physique . . . . . . . . . . . : 48-A4-72-5F-39-BB
   DHCP activé. . . . . . . . . . . . . . : Oui
   Configuration automatique activée. . . : Oui

C:\Users\bapti>route PRINT -4
===========================================================================
Liste d'Interfaces
 16...0a 00 27 00 00 10 ......VirtualBox Host-Only Ethernet Adapter
 13...48 a4 72 5f 39 b8 ......Microsoft Wi-Fi Direct Virtual Adapter
 18...4a a4 72 5f 39 b7 ......Microsoft Wi-Fi Direct Virtual Adapter #2
 11...98 28 a6 27 d5 93 ......Realtek PCIe GBE Family Controller
  3...48 a4 72 5f 39 b7 ......Intel(R) Wireless-AC 9560 160MHz
  7...48 a4 72 5f 39 bb ......Bluetooth Device (Personal Area Network)
  1...........................Software Loopback Interface 1
===========================================================================

IPv4 Table de routage
===========================================================================
Itinéraires actifs :
Destination réseau    Masque réseau  Adr. passerelle   Adr. interface Métrique
          0.0.0.0          0.0.0.0      10.33.3.253       10.33.1.84     40
        10.33.0.0    255.255.252.0         On-link        10.33.1.84    296
       10.33.1.84  255.255.255.255         On-link        10.33.1.84    296
      10.33.3.255  255.255.255.255         On-link        10.33.1.84    296
        127.0.0.0        255.0.0.0         On-link         127.0.0.1    331
        127.0.0.1  255.255.255.255         On-link         127.0.0.1    331
  127.255.255.255  255.255.255.255         On-link         127.0.0.1    331
      169.254.0.0      255.255.0.0         On-link   169.254.102.101    291
  169.254.102.101  255.255.255.255         On-link   169.254.102.101    291
  169.254.255.255  255.255.255.255         On-link   169.254.102.101    291
     192.168.56.0    255.255.255.0         On-link      192.168.56.1    281
     192.168.56.1  255.255.255.255         On-link      192.168.56.1    281
   192.168.56.255  255.255.255.255         On-link      192.168.56.1    281
        224.0.0.0        240.0.0.0         On-link         127.0.0.1    331
        224.0.0.0        240.0.0.0         On-link   169.254.102.101    291
        224.0.0.0        240.0.0.0         On-link      192.168.56.1    281
        224.0.0.0        240.0.0.0         On-link        10.33.1.84    296
  255.255.255.255  255.255.255.255         On-link         127.0.0.1    331
  255.255.255.255  255.255.255.255         On-link   169.254.102.101    291
  255.255.255.255  255.255.255.255         On-link      192.168.56.1    281
  255.255.255.255  255.255.255.255         On-link        10.33.1.84    296
===========================================================================
Itinéraires persistants :
  Aucun

Adr.passerelle =  10.33.3.253  

Adr.passerelle =  10.33.3.253 

L'adresse passerelle permet la comuniquation entre deux elements reseaux.


On perd la connexion a internet c'est normal car l'on prend une adresse ip deja prise par un autre appareil


B.NMAP

C:\Users\bapti>nmap -sP 10.33.0.0/22
Starting Nmap 7.80 ( https://nmap.org ) at 2020-01-23 09:37 Paris, Madrid
Nmap scan report for 10.33.0.10
Host is up (0.022s latency).
MAC Address: AC:ED:5C:72:CD:BF (Intel Corporate)
Nmap scan report for 10.33.0.14
Host is up (0.030s latency).
MAC Address: 28:16:AD:AE:2A:2C (Intel Corporate)
Nmap scan report for 10.33.0.15
Host is up (0.023s latency).
MAC Address: B8:8A:60:87:9D:E4 (Intel Corporate)
Nmap scan report for 10.33.0.16
Host is up (0.10s latency).
MAC Address: 74:EB:80:E6:EB:AA (Samsung Electronics)
Nmap scan report for 10.33.0.17
Host is up (0.015s latency).
MAC Address: 7C:76:35:E5:3F:53 (Intel Corporate)
Nmap scan report for 10.33.0.22
Host is up (0.0050s latency).
MAC Address: 50:E0:85:B9:CF:80 (Intel Corporate)
Nmap scan report for 10.33.0.24
Host is up (0.029s latency).
MAC Address: 30:24:32:9E:73:20 (Intel Corporate)
Nmap scan report for 10.33.0.30
Host is up (0.020s latency).
MAC Address: 64:5D:86:4E:69:6B (Intel Corporate)
Nmap scan report for 10.33.0.35
Host is up (0.11s latency).
MAC Address: 78:4F:43:51:56:D3 (Apple)
Nmap scan report for 10.33.0.37
Host is up (0.055s latency).
MAC Address: 60:AB:67:DC:5E:D3 (Xiaomi Communications)
Nmap scan report for 10.33.0.39
Host is up (0.062s latency).
MAC Address: B4:D5:BD:E1:FA:46 (Intel Corporate)
Nmap scan report for 10.33.0.48
Host is up (0.11s latency).
MAC Address: 78:4F:43:00:A7:13 (Apple)
Nmap scan report for 10.33.0.49
Host is up (0.35s latency).
MAC Address: 00:CD:FE:C5:9B:58 (Apple)
Nmap scan report for 10.33.0.50
Host is up (0.033s latency).
MAC Address: E4:B3:18:48:36:68 (Intel Corporate)
Nmap scan report for 10.33.0.51
Host is up (0.026s latency).
MAC Address: 50:BC:96:68:CC:93 (Apple)
Nmap scan report for 10.33.0.52
Host is up (0.32s latency).
MAC Address: 30:10:B3:69:9B:B2 (Liteon Technology)
Nmap scan report for 10.33.0.54
Host is up (0.0040s latency).
MAC Address: AC:BC:32:90:C5:35 (Apple)
Nmap scan report for 10.33.0.55
Host is up (0.17s latency).
MAC Address: 00:5A:13:2F:CC:24 (Huawei Technologies)
Nmap scan report for 10.33.0.56
Host is up (0.027s latency).
MAC Address: DC:72:9B:98:38:7E (Huawei Technologies)
Nmap scan report for 10.33.0.57
Host is up (0.011s latency).
MAC Address: C8:FF:28:29:7A:D7 (Liteon Technology)
Nmap scan report for 10.33.0.58
Host is up (0.10s latency).
MAC Address: F4:BF:80:01:CC:1D (Huawei Technologies)
Nmap scan report for 10.33.0.60
Host is up (0.017s latency).
MAC Address: 14:4F:8A:12:88:E2 (Intel Corporate)
Nmap scan report for 10.33.0.62
Host is up (0.093s latency).
MAC Address: 88:66:A5:99:7F:B4 (Apple)
Nmap scan report for 10.33.0.63
Host is up (0.088s latency).
MAC Address: FC:18:3C:A0:0B:C7 (Apple)
Nmap scan report for 10.33.0.64
Host is up (0.096s latency).
MAC Address: 70:3C:69:78:9D:D0 (Apple)
Nmap scan report for 10.33.0.68
Host is up (0.019s latency).
MAC Address: 9C:B6:D0:18:94:4F (Rivet Networks)
Nmap scan report for 10.33.0.71
Host is up (0.056s latency).
MAC Address: F4:60:E2:E2:3E:00 (Xiaomi Communications)
Nmap scan report for 10.33.0.73
Host is up (0.10s latency).
MAC Address: 6C:8D:C1:04:8B:C7 (Apple)
Nmap scan report for 10.33.0.75
Host is up (0.060s latency).
MAC Address: B4:CB:57:12:30:1B (Guangdong Oppo Mobile Telecommunications)
Nmap scan report for 10.33.0.77
Host is up (0.012s latency).
MAC Address: DC:A2:66:29:52:A1 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.0.80
Host is up (0.057s latency).
MAC Address: 44:03:2C:EC:B1:75 (Intel Corporate)
Nmap scan report for 10.33.0.81
Host is up (0.013s latency).
MAC Address: 9E:B6:C4:14:79:C7 (Unknown)
Nmap scan report for 10.33.0.83
Host is up (0.013s latency).
MAC Address: 9C:B6:D0:09:AB:6F (Rivet Networks)
Nmap scan report for 10.33.0.86
Host is up (0.19s latency).
MAC Address: A4:D9:31:1A:F3:87 (Apple)
Nmap scan report for 10.33.0.88
Host is up (0.19s latency).
MAC Address: 9C:E3:3F:95:57:49 (Apple)
Nmap scan report for 10.33.0.93
Host is up (0.0070s latency).
MAC Address: 94:B8:6D:6F:C2:CD (Intel Corporate)
Nmap scan report for 10.33.0.94
Host is up (0.079s latency).
MAC Address: 10:02:B5:57:03:50 (Intel Corporate)
Nmap scan report for 10.33.0.96
Host is up (0.0070s latency).
MAC Address: 48:F1:7F:28:E0:83 (Intel Corporate)
Nmap scan report for 10.33.0.98
Host is up (0.098s latency).
MAC Address: 6C:4D:73:91:72:75 (Apple)
Nmap scan report for 10.33.0.103
Host is up (0.13s latency).
MAC Address: A4:E9:75:BC:0E:97 (Apple)
Nmap scan report for 10.33.0.105
Host is up (0.012s latency).
MAC Address: 88:E9:FE:75:39:D6 (Apple)
Nmap scan report for 10.33.0.107
Host is up (0.24s latency).
MAC Address: 1C:B7:96:EA:A9:A5 (Huawei Technologies)
Nmap scan report for 10.33.0.108
Host is up (0.10s latency).
MAC Address: 20:47:DA:65:0C:3D (Xiaomi Communications)
Nmap scan report for 10.33.0.110
Host is up (0.17s latency).
MAC Address: B4:8B:19:1E:60:99 (Apple)
Nmap scan report for 10.33.0.115
Host is up (0.012s latency).
MAC Address: F8:DA:0C:01:40:1D (Hon Hai Precision Ind.)
Nmap scan report for 10.33.0.118
Host is up (0.21s latency).
MAC Address: B0:FC:36:B6:2E:97 (CyberTAN Technology)
Nmap scan report for 10.33.0.119
Host is up (0.089s latency).
MAC Address: 58:20:59:00:08:60 (Xiaomi Communications)
Nmap scan report for 10.33.0.120
Host is up (0.15s latency).
MAC Address: 44:18:FD:4B:72:88 (Apple)
Nmap scan report for 10.33.0.121
Host is up (0.32s latency).
MAC Address: 58:40:4E:15:96:EA (Apple)
Nmap scan report for 10.33.0.125
Host is up (0.059s latency).
MAC Address: E0:B5:2D:ED:BD:D1 (Apple)
Nmap scan report for 10.33.0.128
Host is up (1.2s latency).
MAC Address: 40:9C:28:2C:CF:E0 (Apple)
Nmap scan report for 10.33.0.134
Host is up (0.0070s latency).
MAC Address: 94:65:2D:85:2B:0C (OnePlus Technology (Shenzhen))
Nmap scan report for 10.33.0.137
Host is up (0.076s latency).
MAC Address: 50:E0:85:F5:0B:45 (Intel Corporate)
Nmap scan report for 10.33.0.141
Host is up (0.11s latency).
MAC Address: 58:20:59:08:F8:EB (Xiaomi Communications)
Nmap scan report for 10.33.0.148
Host is up (0.097s latency).
MAC Address: B0:55:08:C0:E1:E6 (Huawei Technologies)
Nmap scan report for 10.33.0.150
Host is up (0.031s latency).
MAC Address: DC:F5:05:D2:9A:67 (AzureWave Technology)
Nmap scan report for 10.33.0.154
Host is up (0.0070s latency).
MAC Address: 0C:96:E6:88:63:D5 (Cloud Network Technology (Samoa) Limited)
Nmap scan report for 10.33.0.157
Host is up (0.0050s latency).
MAC Address: 38:00:25:8A:38:7E (Intel Corporate)
Nmap scan report for 10.33.0.160
Host is up (1.0s latency).
MAC Address: F8:87:F1:C8:C4:45 (Apple)
Nmap scan report for 10.33.0.162
Host is up (0.0070s latency).
MAC Address: DC:08:0F:3D:CB:D8 (Apple)
Nmap scan report for 10.33.0.163
Host is up (0.020s latency).
MAC Address: D4:3B:04:B7:B7:AE (Intel Corporate)
Nmap scan report for 10.33.0.166
Host is up (0.030s latency).
MAC Address: 80:91:33:C9:37:83 (AzureWave Technology)
Nmap scan report for 10.33.0.169
Host is up (0.0080s latency).
MAC Address: A4:83:E7:CC:F9:68 (Apple)
Nmap scan report for 10.33.0.170
Host is up (0.029s latency).
MAC Address: 0C:96:E6:3C:3B:6B (Cloud Network Technology (Samoa) Limited)
Nmap scan report for 10.33.0.171
Host is up (1.2s latency).
MAC Address: 80:91:33:1E:03:7B (AzureWave Technology)
Nmap scan report for 10.33.0.174
Host is up (0.22s latency).
MAC Address: A4:E9:75:DB:04:84 (Apple)
Nmap scan report for 10.33.0.179
Host is up (0.0040s latency).
MAC Address: C0:B6:F9:14:16:7B (Intel Corporate)
Nmap scan report for 10.33.0.180
Host is up (0.17s latency).
MAC Address: 00:CD:FE:C7:77:E1 (Apple)
Nmap scan report for 10.33.0.193
Host is up (0.010s latency).
MAC Address: A0:51:0B:6C:B9:20 (Intel Corporate)
Nmap scan report for 10.33.0.195
Host is up (0.0090s latency).
MAC Address: C0:EE:FB:DD:78:C3 (OnePlus Tech (Shenzhen))
Nmap scan report for 10.33.0.198
Host is up (0.0050s latency).
MAC Address: 0C:54:15:C3:F0:0F (Intel Corporate)
Nmap scan report for 10.33.0.205
Host is up (0.074s latency).
MAC Address: F0:98:9D:D7:35:03 (Apple)
Nmap scan report for 10.33.0.206
Host is up (0.0070s latency).
MAC Address: D0:C6:37:3C:59:A1 (Unknown)
Nmap scan report for 10.33.0.209
Host is up (0.22s latency).
MAC Address: B0:89:00:A6:C5:1A (Huawei Technologies)
Nmap scan report for 10.33.0.211
Host is up (0.23s latency).
MAC Address: 80:D6:05:2E:86:73 (Apple)
Nmap scan report for 10.33.0.214
Host is up (0.0090s latency).
MAC Address: C0:B5:D7:C2:BE:1F (Chongqing Fugui Electronics)
Nmap scan report for 10.33.0.215
Host is up (0.25s latency).
MAC Address: 06:99:0B:8F:95:A5 (Unknown)
Nmap scan report for 10.33.0.218
Host is up (0.011s latency).
MAC Address: D4:25:8B:82:1B:6C (Intel Corporate)
Nmap scan report for 10.33.0.224
Host is up (0.014s latency).
MAC Address: F8:28:19:A0:CB:D1 (Liteon Technology)
Nmap scan report for 10.33.0.225
Host is up (0.082s latency).
MAC Address: 74:B5:87:57:A7:D4 (Apple)
Nmap scan report for 10.33.0.227
Host is up (0.045s latency).
MAC Address: 44:18:FD:33:DA:C1 (Apple)
Nmap scan report for 10.33.0.228
Host is up (0.51s latency).
MAC Address: 60:A3:7D:AD:16:A1 (Apple)
Nmap scan report for 10.33.0.229
Host is up (0.13s latency).
MAC Address: 4C:D1:A1:29:1C:F6 (Huawei Technologies)
Nmap scan report for 10.33.0.234
Host is up (1.1s latency).
MAC Address: 10:94:BB:3B:2D:4D (Apple)
Nmap scan report for 10.33.0.239
Host is up (0.058s latency).
MAC Address: F0:18:98:05:BE:4D (Apple)
Nmap scan report for 10.33.0.241
Host is up (0.053s latency).
MAC Address: 30:45:96:DA:B4:F5 (Huawei Technologies)
Nmap scan report for 10.33.0.242
Host is up (0.0050s latency).
MAC Address: 38:CA:DA:F0:86:BE (Apple)
Nmap scan report for 10.33.0.251
Host is up (0.0060s latency).
MAC Address: C0:B5:D7:47:CE:E1 (Chongqing Fugui Electronics)
Nmap scan report for 10.33.0.252
Host is up (0.094s latency).
MAC Address: A4:83:E7:6B:BC:CE (Apple)
Nmap scan report for 10.33.0.255
Host is up (0.0050s latency).
MAC Address: 68:07:15:12:9E:68 (Intel Corporate)
Nmap scan report for 10.33.1.1
Host is up (0.024s latency).
MAC Address: 30:24:32:CA:8D:9D (Intel Corporate)
Nmap scan report for 10.33.1.9
Host is up (0.068s latency).
MAC Address: DC:F5:05:AB:6E:59 (AzureWave Technology)
Nmap scan report for 10.33.1.12
Host is up (0.23s latency).
MAC Address: BC:3D:85:A1:33:3E (Huawei Technologies)
Nmap scan report for 10.33.1.13
Host is up (0.0090s latency).
MAC Address: 98:01:A7:D1:6C:29 (Apple)
Nmap scan report for 10.33.1.14
Host is up (0.029s latency).
MAC Address: 08:D4:0C:7E:FC:3E (Intel Corporate)
Nmap scan report for 10.33.1.18
Host is up (0.010s latency).
MAC Address: 90:78:41:CB:04:17 (Intel Corporate)
Nmap scan report for 10.33.1.24
Host is up (0.11s latency).
MAC Address: 38:F9:D3:E8:DA:3E (Apple)
Nmap scan report for 10.33.1.27
Host is up (0.0080s latency).
MAC Address: 7C:2A:31:0D:6F:60 (Intel Corporate)
Nmap scan report for 10.33.1.33
Host is up (0.0080s latency).
MAC Address: 3C:77:E6:0F:E7:39 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.38
Host is up (0.047s latency).
MAC Address: A4:5E:60:0D:EE:71 (Apple)
Nmap scan report for 10.33.1.43
Host is up (0.10s latency).
MAC Address: 38:F9:D3:2D:F1:80 (Apple)
Nmap scan report for 10.33.1.45
Host is up (0.0070s latency).
MAC Address: 94:65:2D:40:58:81 (OnePlus Technology (Shenzhen))
Nmap scan report for 10.33.1.47
Host is up (0.051s latency).
MAC Address: 60:F1:89:E7:B0:D4 (Murata Manufacturing)
Nmap scan report for 10.33.1.50
Host is up (0.21s latency).
MAC Address: 80:D6:05:28:EF:DA (Apple)
Nmap scan report for 10.33.1.53
Host is up (0.0060s latency).
MAC Address: 48:45:20:5C:76:C3 (Intel Corporate)
Nmap scan report for 10.33.1.54
Host is up (0.14s latency).
MAC Address: 7C:01:91:86:93:63 (Apple)
Nmap scan report for 10.33.1.56
Host is up (0.0040s latency).
MAC Address: AC:ED:5C:AF:72:9C (Intel Corporate)
Nmap scan report for 10.33.1.57
Host is up (0.022s latency).
MAC Address: EE:28:73:C1:10:C6 (Unknown)
Nmap scan report for 10.33.1.62
Host is up (0.094s latency).
MAC Address: B0:70:2D:B8:9F:24 (Apple)
Nmap scan report for 10.33.1.66
Host is up (0.070s latency).
MAC Address: A0:99:9B:1C:74:A7 (Apple)
Nmap scan report for 10.33.1.67
Host is up (0.37s latency).
MAC Address: A4:B8:05:7C:1A:66 (Apple)
Nmap scan report for 10.33.1.68
Host is up (0.017s latency).
MAC Address: 50:E0:85:53:92:B0 (Intel Corporate)
Nmap scan report for 10.33.1.71
Host is up (0.010s latency).
MAC Address: A0:51:0B:6D:11:22 (Intel Corporate)
Nmap scan report for 10.33.1.72
Host is up (0.11s latency).
MAC Address: 7C:B2:7D:3B:C4:69 (Intel Corporate)
Nmap scan report for 10.33.1.73
Host is up (0.0090s latency).
MAC Address: 74:DF:BF:2D:07:7E (Liteon Technology)
Nmap scan report for 10.33.1.79
Host is up (0.045s latency).
MAC Address: 74:E5:F9:F3:20:E6 (Intel Corporate)
Nmap scan report for 10.33.1.81
Host is up (0.0030s latency).
MAC Address: 98:3B:8F:DE:BF:39 (Intel Corporate)
Nmap scan report for 10.33.1.82
Host is up (0.080s latency).
MAC Address: 58:B1:0F:80:AC:68 (Samsung Electronics)
Nmap scan report for 10.33.1.83
Host is up (0.18s latency).
MAC Address: 34:79:16:1F:25:B8 (Huawei Technologies)
Nmap scan report for 10.33.1.86
Host is up (0.0060s latency).
MAC Address: 9C:B6:D0:60:F6:BB (Rivet Networks)
Nmap scan report for 10.33.1.87
Host is up (0.010s latency).
MAC Address: 70:C9:4E:69:69:DD (Liteon Technology)
Nmap scan report for 10.33.1.90
Host is up (0.0060s latency).
MAC Address: 94:B8:6D:91:49:CF (Intel Corporate)
Nmap scan report for 10.33.1.92
Host is up (0.096s latency).
MAC Address: 38:F9:D3:BB:80:36 (Apple)
Nmap scan report for 10.33.1.96
Host is up (0.0060s latency).
MAC Address: 5C:E0:C5:85:EC:88 (Intel Corporate)
Nmap scan report for 10.33.1.97
Host is up (0.13s latency).
MAC Address: 48:2C:A0:97:2F:6E (Xiaomi Communications)
Nmap scan report for 10.33.1.99
Host is up (0.0070s latency).
MAC Address: 08:71:90:8A:BE:3E (Intel Corporate)
Nmap scan report for 10.33.1.100
Host is up (0.010s latency).
MAC Address: 9C:30:5B:AC:FF:F7 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.105
Host is up (0.92s latency).
MAC Address: A8:5C:2C:58:56:59 (Apple)
Nmap scan report for 10.33.1.106
Host is up (1.6s latency).
MAC Address: 90:60:F1:65:14:79 (Apple)
Nmap scan report for 10.33.1.108
Host is up (0.47s latency).
MAC Address: 98:CA:33:BC:C3:71 (Apple)
Nmap scan report for 10.33.1.112
Host is up (0.12s latency).
MAC Address: E0:E6:2E:37:2A:3A (TCT mobile)
Nmap scan report for 10.33.1.114
Host is up (0.010s latency).
MAC Address: 88:B1:11:B9:41:F0 (Intel Corporate)
Nmap scan report for 10.33.1.116
Host is up (0.13s latency).
MAC Address: 38:53:9C:C3:C1:27 (Apple)
Nmap scan report for 10.33.1.118
Host is up (0.10s latency).
MAC Address: F0:18:98:30:AE:A8 (Apple)
Nmap scan report for 10.33.1.122
Host is up (0.0050s latency).
MAC Address: 90:78:41:61:D0:46 (Intel Corporate)
Nmap scan report for 10.33.1.128
Host is up (0.089s latency).
MAC Address: C0:BD:C8:40:96:27 (Samsung Electronics)
Nmap scan report for 10.33.1.129
Host is up (0.22s latency).
MAC Address: E4:34:93:5A:1C:5C (Huawei Technologies)
Nmap scan report for 10.33.1.132
Host is up (0.013s latency).
MAC Address: 30:24:32:DF:27:9E (Intel Corporate)
Nmap scan report for 10.33.1.135
Host is up (0.012s latency).
MAC Address: A8:6D:AA:54:07:B3 (Intel Corporate)
Nmap scan report for 10.33.1.136
Host is up (0.19s latency).
MAC Address: 08:C5:E1:2D:58:23 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.1.137
Host is up (0.067s latency).
MAC Address: F4:5C:89:C9:2A:5D (Apple)
Nmap scan report for 10.33.1.138
Host is up (0.013s latency).
MAC Address: C8:3D:D4:7A:CD:FF (CyberTAN Technology)
Nmap scan report for 10.33.1.139
Host is up (0.085s latency).
MAC Address: 48:3C:0C:1C:5B:44 (Huawei Technologies)
Nmap scan report for 10.33.1.141
Host is up (0.023s latency).
MAC Address: 6C:00:6B:4E:69:33 (Samsung Electronics)
Nmap scan report for 10.33.1.142
Host is up (0.056s latency).
MAC Address: D8:0B:9A:15:3E:B0 (Unknown)
Nmap scan report for 10.33.1.146
Host is up (0.045s latency).
MAC Address: EC:2C:E2:AD:BA:DC (Apple)
Nmap scan report for 10.33.1.150
Host is up (0.25s latency).
MAC Address: 74:B5:87:AD:EE:97 (Apple)
Nmap scan report for 10.33.1.155
Host is up (0.0050s latency).
MAC Address: DC:F5:05:5B:50:87 (AzureWave Technology)
Nmap scan report for 10.33.1.162
Host is up (0.017s latency).
MAC Address: 50:3E:AA:2D:33:8A (Tp-link Technologies)
Nmap scan report for 10.33.1.164
Host is up (0.0050s latency).
MAC Address: C0:9A:D0:B4:91:74 (Apple)
Nmap scan report for 10.33.1.167
Host is up (0.19s latency).
MAC Address: 40:9C:28:93:97:72 (Apple)
Nmap scan report for 10.33.1.171
Host is up (0.011s latency).
MAC Address: FC:77:74:60:58:5B (Intel Corporate)
Nmap scan report for 10.33.1.175
Host is up (0.16s latency).
MAC Address: 58:CB:52:8E:5B:1F (Google)
Nmap scan report for 10.33.1.177
Host is up (0.0060s latency).
MAC Address: 74:70:FD:E5:89:C2 (Intel Corporate)
Nmap scan report for 10.33.1.179
Host is up (0.014s latency).
MAC Address: B0:10:41:F8:A5:43 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.185
Host is up (0.0040s latency).
MAC Address: D4:D2:52:85:23:16 (Intel Corporate)
Nmap scan report for 10.33.1.189
Host is up (0.0060s latency).
MAC Address: 74:E5:F9:D7:9E:D4 (Intel Corporate)
Nmap scan report for 10.33.1.194
Host is up (0.086s latency).
MAC Address: 28:16:A8:62:87:7D (Microsoft)
Nmap scan report for 10.33.1.195
Host is up (0.019s latency).
MAC Address: 90:78:41:AA:C2:29 (Intel Corporate)
Nmap scan report for 10.33.1.196
Host is up (0.11s latency).
MAC Address: 34:29:12:E7:18:DF (Huawei Technologies)
Nmap scan report for 10.33.1.197
Host is up (0.52s latency).
MAC Address: 48:4B:AA:E3:1B:93 (Apple)
Nmap scan report for 10.33.1.201
Host is up (0.066s latency).
MAC Address: 4C:DD:31:BE:3A:0B (Samsung Electronics)
Nmap scan report for 10.33.1.202
Host is up (0.0050s latency).
MAC Address: 1C:1B:B5:A1:C0:7A (Intel Corporate)
Nmap scan report for 10.33.1.213
Host is up (0.0070s latency).
MAC Address: 3C:95:09:50:9C:33 (Liteon Technology)
Nmap scan report for 10.33.1.217
Host is up (0.0090s latency).
MAC Address: 64:5D:86:C1:1B:73 (Intel Corporate)
Nmap scan report for 10.33.1.218
Host is up (0.14s latency).
MAC Address: A0:56:F3:38:4B:D5 (Apple)
Nmap scan report for 10.33.1.219
Host is up (0.38s latency).
MAC Address: D8:55:75:87:0D:BE (Samsung Electronics)
Nmap scan report for 10.33.1.220
Host is up (0.28s latency).
MAC Address: D4:61:2E:EF:E6:6D (Huawei Technologies)
Nmap scan report for 10.33.1.221
Host is up (0.047s latency).
MAC Address: 54:13:79:7C:7D:BF (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.222
Host is up (0.032s latency).
MAC Address: AC:1F:74:0A:5C:48 (Apple)
Nmap scan report for 10.33.1.223
Host is up (0.016s latency).
MAC Address: 5C:E0:C5:26:78:89 (Intel Corporate)
Nmap scan report for 10.33.1.224
Host is up (0.0080s latency).
MAC Address: 80:B0:3D:C2:5C:1B (Apple)
Nmap scan report for 10.33.1.225
Host is up (0.0090s latency).
MAC Address: D0:C5:D3:5F:8A:6F (AzureWave Technology)
Nmap scan report for 10.33.1.234
Host is up (0.0070s latency).
MAC Address: C0:B6:F9:CB:CB:E0 (Intel Corporate)
Nmap scan report for 10.33.1.235
Host is up (0.0050s latency).
MAC Address: AC:FD:CE:8F:D8:29 (Intel Corporate)
Nmap scan report for 10.33.1.236
Host is up (0.039s latency).
MAC Address: 90:78:41:D0:20:82 (Intel Corporate)
Nmap scan report for 10.33.1.238
Host is up (0.0060s latency).
MAC Address: 44:03:2C:47:04:4B (Intel Corporate)
Nmap scan report for 10.33.1.240
Host is up (0.29s latency).
MAC Address: 00:B3:62:02:ED:5A (Apple)
Nmap scan report for 10.33.1.241
Host is up (0.092s latency).
MAC Address: F4:5C:89:BE:22:0D (Apple)
Nmap scan report for 10.33.1.244
Host is up (0.0070s latency).
MAC Address: A8:6D:AA:E8:65:43 (Intel Corporate)
Nmap scan report for 10.33.1.246
Host is up (0.039s latency).
MAC Address: F8:87:F1:30:FF:DE (Apple)
Nmap scan report for 10.33.1.249
Host is up (0.10s latency).
MAC Address: F0:18:98:4D:21:1A (Apple)
Nmap scan report for 10.33.2.3
Host is up (0.011s latency).
MAC Address: F4:96:34:EA:59:C5 (Intel Corporate)
Nmap scan report for 10.33.2.10
Host is up (0.0050s latency).
MAC Address: B4:6D:83:A5:AF:2D (Intel Corporate)
Nmap scan report for 10.33.2.13
Host is up (0.082s latency).
MAC Address: 88:E9:FE:68:52:C7 (Apple)
Nmap scan report for 10.33.2.15
Host is up (0.069s latency).
MAC Address: 40:9F:38:E4:8D:37 (AzureWave Technology)
Nmap scan report for 10.33.2.17
Host is up (0.034s latency).
MAC Address: 58:40:4E:7B:C5:20 (Apple)
Nmap scan report for 10.33.2.18
Host is up (0.030s latency).
MAC Address: F8:28:19:58:40:55 (Liteon Technology)
Nmap scan report for 10.33.2.21
Host is up (0.15s latency).
MAC Address: C0:E8:62:A0:63:EB (Apple)
Nmap scan report for 10.33.2.22
Host is up (0.041s latency).
MAC Address: DC:F5:05:14:34:8F (AzureWave Technology)
Nmap scan report for 10.33.2.25
Host is up (0.013s latency).
MAC Address: 64:5D:86:5A:08:84 (Intel Corporate)
Nmap scan report for 10.33.2.31
Host is up (0.080s latency).
MAC Address: DC:8B:28:89:67:4B (Intel Corporate)
Nmap scan report for 10.33.2.32
Host is up (0.078s latency).
MAC Address: 98:01:A7:A3:08:89 (Apple)
Nmap scan report for 10.33.2.37
Host is up (0.078s latency).
MAC Address: 94:B8:6D:47:04:0F (Intel Corporate)
Nmap scan report for 10.33.2.40
Host is up (0.0090s latency).
MAC Address: D0:AB:D5:C7:1A:28 (Intel Corporate)
Nmap scan report for 10.33.2.51
Host is up (0.0050s latency).
MAC Address: 48:A4:72:6E:EA:A1 (Intel Corporate)
Nmap scan report for 10.33.2.62
Host is up (0.051s latency).
MAC Address: 10:02:B5:A2:60:AC (Intel Corporate)
Nmap scan report for 10.33.2.69
Host is up (0.032s latency).
MAC Address: 38:F9:D3:3C:01:7D (Apple)
Nmap scan report for 10.33.2.70
Host is up (0.057s latency).
MAC Address: 40:4D:7F:C4:EB:E5 (Apple)
Nmap scan report for 10.33.2.71
Host is up (0.11s latency).
MAC Address: E0:DC:FF:EE:02:21 (Xiaomi Communications)
Nmap scan report for 10.33.2.74
Host is up (0.010s latency).
MAC Address: D4:61:9D:30:A2:60 (Apple)
Nmap scan report for 10.33.2.75
Host is up (0.0070s latency).
MAC Address: 00:28:F8:05:9F:A1 (Intel Corporate)
Nmap scan report for 10.33.2.76
Host is up (0.038s latency).
MAC Address: D0:D2:B0:26:45:80 (Apple)
Nmap scan report for 10.33.2.81
Host is up (0.22s latency).
MAC Address: 34:08:BC:B2:B6:84 (Apple)
Nmap scan report for 10.33.2.83
Host is up (0.12s latency).
MAC Address: 38:00:25:AC:79:DE (Intel Corporate)
Nmap scan report for 10.33.2.87
Host is up (0.18s latency).
MAC Address: 14:C2:13:9C:17:FF (Apple)
Nmap scan report for 10.33.2.91
Host is up (0.42s latency).
MAC Address: 00:5B:94:07:67:7B (Apple)
Nmap scan report for 10.33.2.100
Host is up (0.0090s latency).
MAC Address: 68:EC:C5:73:40:CE (Intel Corporate)
Nmap scan report for 10.33.2.104
Host is up (0.050s latency).
MAC Address: 00:DB:70:A5:22:E6 (Apple)
Nmap scan report for 10.33.2.106
Host is up (0.17s latency).
MAC Address: A4:93:3F:99:61:59 (Huawei Technologies)
Nmap scan report for 10.33.2.108
Host is up (0.11s latency).
MAC Address: D0:C6:37:81:9E:49 (Unknown)
Nmap scan report for 10.33.2.111
Host is up (0.088s latency).
MAC Address: A4:83:E7:56:DD:32 (Apple)
Nmap scan report for 10.33.2.114
Host is up (0.12s latency).
MAC Address: D8:CE:3A:91:77:3D (Xiaomi Communications)
Nmap scan report for 10.33.2.119
Host is up (0.15s latency).
MAC Address: 08:71:90:B0:FE:00 (Intel Corporate)
Nmap scan report for 10.33.2.120
Host is up (0.011s latency).
MAC Address: 94:53:30:8E:9D:C7 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.2.123
Host is up (0.0080s latency).
MAC Address: 90:F0:52:54:2B:4D (Meizu Technology)
Nmap scan report for 10.33.2.124
Host is up (0.078s latency).
MAC Address: 30:24:32:3D:37:95 (Intel Corporate)
Nmap scan report for 10.33.2.125
Host is up (0.076s latency).
MAC Address: 98:5F:D3:3C:5A:67 (Microsoft)
Nmap scan report for 10.33.2.126
Host is up (0.020s latency).
MAC Address: B4:69:21:F0:E3:26 (Intel Corporate)
Nmap scan report for 10.33.2.127
Host is up (0.42s latency).
MAC Address: 6C:C7:EC:36:8D:CB (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.128
Host is up (0.28s latency).
MAC Address: D4:38:9C:8A:7B:48 (Sony Mobile Communications)
Nmap scan report for 10.33.2.131
Host is up (0.13s latency).
MAC Address: 20:34:FB:A5:95:D9 (Xiaomi Communications)
Nmap scan report for 10.33.2.134
Host is up (0.098s latency).
MAC Address: CC:44:63:6E:0D:99 (Apple)
Nmap scan report for 10.33.2.137
Host is up (0.0060s latency).
MAC Address: 74:40:BB:0B:1E:91 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.2.139
Host is up (0.097s latency).
MAC Address: 08:C5:E1:DB:A0:F2 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.140
Host is up (0.024s latency).
MAC Address: DC:FB:48:1D:25:BD (Intel Corporate)
Nmap scan report for 10.33.2.141
Host is up (0.15s latency).
MAC Address: 70:4D:7B:AD:D8:05 (Asustek Computer)
Nmap scan report for 10.33.2.144
Host is up (0.42s latency).
MAC Address: A4:08:EA:B1:7D:ED (Murata Manufacturing)
Nmap scan report for 10.33.2.145
Host is up (0.0050s latency).
MAC Address: 30:24:32:4A:7D:AB (Intel Corporate)
Nmap scan report for 10.33.2.147
Host is up (0.0080s latency).
MAC Address: A4:02:B9:7C:25:EA (Intel Corporate)
Nmap scan report for 10.33.2.148
Host is up (0.013s latency).
MAC Address: 88:B1:11:5A:63:33 (Intel Corporate)
Nmap scan report for 10.33.2.150
Host is up (0.0090s latency).
MAC Address: 9C:B6:D0:20:69:A9 (Rivet Networks)
Nmap scan report for 10.33.2.152
Host is up (0.0080s latency).
MAC Address: 18:5E:0F:D8:ED:7F (Intel Corporate)
Nmap scan report for 10.33.2.153
Host is up (0.58s latency).
MAC Address: F8:87:F1:C9:DF:EF (Apple)
Nmap scan report for 10.33.2.154
Host is up (0.36s latency).
MAC Address: 08:C5:E1:1E:80:40 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.155
Host is up (0.38s latency).
MAC Address: A0:C9:A0:8F:69:D6 (Murata Manufacturing)
Nmap scan report for 10.33.2.156
Host is up (0.0060s latency).
MAC Address: 9C:B6:D0:F1:32:37 (Rivet Networks)
Nmap scan report for 10.33.2.163
Host is up (0.044s latency).
MAC Address: A4:5E:60:C1:58:B3 (Apple)
Nmap scan report for 10.33.2.166
Host is up (0.010s latency).
MAC Address: 20:79:18:A8:EF:8F (Intel Corporate)
Nmap scan report for 10.33.2.170
Host is up (0.20s latency).
MAC Address: F8:16:54:49:74:33 (Intel Corporate)
Nmap scan report for 10.33.2.174
Host is up (0.011s latency).
MAC Address: 48:F1:7F:57:55:80 (Intel Corporate)
Nmap scan report for 10.33.2.177
Host is up (0.11s latency).
MAC Address: 4C:DD:31:CF:97:0C (Samsung Electronics)
Nmap scan report for 10.33.2.178
Host is up (0.016s latency).
MAC Address: 80:E6:50:14:60:2A (Apple)
Nmap scan report for 10.33.2.180
Host is up (0.11s latency).
MAC Address: 70:3C:69:D3:1D:67 (Apple)
Nmap scan report for 10.33.2.183
Host is up (0.79s latency).
MAC Address: 30:07:4D:D0:5F:40 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.186
Host is up (0.0080s latency).
MAC Address: D0:AB:D5:C5:4A:04 (Intel Corporate)
Nmap scan report for 10.33.2.194
Host is up (0.064s latency).
MAC Address: 38:F9:D3:81:EA:7D (Apple)
Nmap scan report for 10.33.2.200
Host is up (0.011s latency).
MAC Address: BC:A8:A6:9D:90:77 (Intel Corporate)
Nmap scan report for 10.33.2.201
Host is up (0.095s latency).
MAC Address: EC:10:7B:06:5F:4B (Samsung Electronics)
Nmap scan report for 10.33.2.211
Host is up (0.046s latency).
MAC Address: F0:18:98:1B:E7:93 (Apple)
Nmap scan report for 10.33.2.215
Host is up (0.13s latency).
MAC Address: F0:0F:EC:2F:A2:7D (Huawei Technologies)
Nmap scan report for 10.33.2.219
Host is up (0.019s latency).
MAC Address: C4:98:80:EF:C1:23 (Apple)
Nmap scan report for 10.33.2.221
Host is up (0.30s latency).
MAC Address: A8:9C:ED:A1:E9:E8 (Xiaomi Communications)
Nmap scan report for 10.33.2.222
Host is up (0.83s latency).
MAC Address: C0:A5:3E:30:64:23 (Apple)
Nmap scan report for 10.33.2.223
Host is up (0.23s latency).
MAC Address: C4:B3:01:D5:47:39 (Apple)
Nmap scan report for 10.33.2.228
Host is up (0.0050s latency).
MAC Address: 34:E1:2D:DC:AA:0F (Intel Corporate)
Nmap scan report for 10.33.2.229
Host is up (0.35s latency).
MAC Address: 08:C5:E1:DC:6C:3E (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.230
Host is up (0.0090s latency).
MAC Address: DA:4E:6C:67:D2:FA (Unknown)
Nmap scan report for 10.33.2.231
Host is up (0.0040s latency).
MAC Address: 9C:B6:D0:FE:B0:D5 (Rivet Networks)
Nmap scan report for 10.33.2.234
Host is up (0.27s latency).
MAC Address: 04:72:95:24:AD:73 (Unknown)
Nmap scan report for 10.33.2.235
Host is up (0.071s latency).
MAC Address: B8:5D:0A:67:0E:8B (Apple)
Nmap scan report for 10.33.2.237
Host is up (0.28s latency).
MAC Address: 98:09:CF:40:FE:4D (OnePlus Technology (Shenzhen))
Nmap scan report for 10.33.2.238
Host is up (0.0050s latency).
MAC Address: 90:78:41:8C:8D:3B (Intel Corporate)
Nmap scan report for 10.33.2.241
Host is up (0.017s latency).
MAC Address: B0:72:BF:85:17:D1 (Murata Manufacturing)
Nmap scan report for 10.33.2.242
Host is up (0.0090s latency).
MAC Address: A0:51:0B:13:47:37 (Intel Corporate)
Nmap scan report for 10.33.2.243
Host is up (0.078s latency).
MAC Address: AC:BC:32:91:0B:57 (Apple)
Nmap scan report for 10.33.2.244
Host is up (0.049s latency).
MAC Address: F4:BF:80:C0:A5:8A (Huawei Technologies)
Nmap scan report for 10.33.2.247
Host is up (0.013s latency).
MAC Address: FC:01:7C:84:B2:0B (Hon Hai Precision Ind.)
Nmap scan report for 10.33.2.250
Host is up (0.097s latency).
MAC Address: 0C:70:4A:F8:63:B2 (Huawei Technologies)
Nmap scan report for 10.33.2.252
Host is up (0.080s latency).
MAC Address: 88:E9:FE:81:1A:AD (Apple)
Nmap scan report for 10.33.2.254
Host is up (0.076s latency).
MAC Address: 48:83:B4:CD:D6:9D (Guangdong Oppo Mobile Telecommunications)
Nmap scan report for 10.33.2.255
Host is up (0.0080s latency).
MAC Address: 80:A5:89:9D:A7:8D (AzureWave Technology)
Nmap scan report for 10.33.3.4
Host is up (0.0060s latency).
MAC Address: D8:F2:CA:40:4E:21 (Intel Corporate)
Nmap scan report for 10.33.3.8
Host is up (0.0050s latency).
MAC Address: 18:5E:0F:D9:F5:3F (Intel Corporate)
Nmap scan report for 10.33.3.10
Host is up (0.019s latency).
MAC Address: E4:2B:34:17:EC:69 (Apple)
Nmap scan report for 10.33.3.15
Host is up (1.6s latency).
MAC Address: 40:98:AD:0A:0B:33 (Apple)
Nmap scan report for 10.33.3.19
Host is up (0.025s latency).
MAC Address: 38:00:25:4A:81:07 (Intel Corporate)
Nmap scan report for 10.33.3.22
Host is up (0.25s latency).
MAC Address: F0:98:9D:4F:3C:15 (Apple)
Nmap scan report for 10.33.3.23
Host is up (0.14s latency).
MAC Address: 8C:85:90:0A:73:40 (Apple)
Nmap scan report for 10.33.3.29
Host is up (0.12s latency).
MAC Address: 90:94:97:79:BE:D0 (Huawei Technologies)
Nmap scan report for 10.33.3.36
Host is up (0.77s latency).
MAC Address: 40:98:AD:22:D7:61 (Apple)
Nmap scan report for 10.33.3.39
Host is up (0.0080s latency).
MAC Address: 50:E0:85:52:3F:D2 (Intel Corporate)
Nmap scan report for 10.33.3.40
Host is up (0.080s latency).
MAC Address: 38:F9:D3:CF:50:86 (Apple)
Nmap scan report for 10.33.3.44
Host is up (0.037s latency).
MAC Address: DC:0B:34:A7:B4:FE (LG Electronics (Mobile Communications))
Nmap scan report for 10.33.3.46
Host is up (0.023s latency).
MAC Address: 20:79:18:8E:F3:0A (Intel Corporate)
Nmap scan report for 10.33.3.48
Host is up (0.010s latency).
MAC Address: A0:88:69:70:A5:49 (Intel Corporate)
Nmap scan report for 10.33.3.50
Host is up (0.074s latency).
MAC Address: 20:16:B9:42:E7:03 (Intel Corporate)
Nmap scan report for 10.33.3.51
Host is up (0.0060s latency).
MAC Address: F8:34:41:F8:18:2B (Intel Corporate)
Nmap scan report for 10.33.3.53
Host is up (0.011s latency).
MAC Address: B8:B2:F8:E4:AF:BD (Apple)
Nmap scan report for 10.33.3.55
Host is up (0.20s latency).
MAC Address: 30:07:4D:CF:5B:3E (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.3.59
Host is up (0.063s latency).
MAC Address: 9C:B6:D0:9B:EF:C1 (Rivet Networks)
Nmap scan report for 10.33.3.68
Host is up (0.055s latency).
MAC Address: C0:F4:E6:E9:81:02 (Huawei Technologies)
Nmap scan report for 10.33.3.70
Host is up (0.0080s latency).
MAC Address: 14:4F:8A:10:9E:6A (Intel Corporate)
Nmap scan report for 10.33.3.71
Host is up (0.0060s latency).
MAC Address: 94:B8:6D:70:9C:75 (Intel Corporate)
Nmap scan report for 10.33.3.73
Host is up (0.10s latency).
MAC Address: 14:4F:8A:C6:7C:D5 (Intel Corporate)
Nmap scan report for 10.33.3.75
Host is up (0.014s latency).
MAC Address: 88:E9:FE:85:78:A5 (Apple)
Nmap scan report for 10.33.3.78
Host is up (0.054s latency).
MAC Address: 8A:9A:A8:AA:F8:52 (Unknown)
Nmap scan report for 10.33.3.81
Host is up (0.11s latency).
MAC Address: E0:5F:45:B3:EE:89 (Apple)
Nmap scan report for 10.33.3.84
Host is up (0.31s latency).
MAC Address: 48:3B:38:29:2B:C2 (Apple)
Nmap scan report for 10.33.3.85
Host is up (0.38s latency).
MAC Address: 8C:86:1E:D2:F7:D8 (Apple)
Nmap scan report for 10.33.3.97
Host is up (0.0080s latency).
MAC Address: 74:70:FD:C5:07:BF (Intel Corporate)
Nmap scan report for 10.33.3.102
Host is up (0.022s latency).
MAC Address: BC:E1:43:35:0B:6B (Apple)
Nmap scan report for 10.33.3.106
Host is up (0.21s latency).
MAC Address: 44:D7:91:83:D1:CA (Unknown)
Nmap scan report for 10.33.3.108
Host is up (0.0060s latency).
MAC Address: D4:6D:6D:C8:46:0F (Intel Corporate)
Nmap scan report for 10.33.3.110
Host is up (0.0070s latency).
MAC Address: 44:03:2C:AD:69:0C (Intel Corporate)
Nmap scan report for 10.33.3.111
Host is up (0.0090s latency).
MAC Address: 98:2C:BC:C8:C8:DC (Unknown)
Nmap scan report for 10.33.3.116
Host is up (0.21s latency).
MAC Address: C0:B5:D7:92:4C:9F (Chongqing Fugui Electronics)
Nmap scan report for 10.33.3.117
Host is up (0.11s latency).
MAC Address: DC:FB:48:38:C2:0A (Intel Corporate)
Nmap scan report for 10.33.3.118
Host is up (0.19s latency).
MAC Address: 8C:25:05:DB:4A:2D (Huawei Technologies)
Nmap scan report for 10.33.3.121
Host is up (0.19s latency).
MAC Address: 40:9C:28:30:25:1E (Apple)
Nmap scan report for 10.33.3.123
Host is up (0.079s latency).
MAC Address: 14:4F:8A:22:6C:C1 (Intel Corporate)
Nmap scan report for 10.33.3.126
Host is up (0.0080s latency).
MAC Address: AC:D5:64:1C:A9:D9 (Chongqing Fugui Electronics)
Nmap scan report for 10.33.3.130
Host is up (0.0070s latency).
MAC Address: 14:4F:8A:C6:7D:0C (Intel Corporate)
Nmap scan report for 10.33.3.132
Host is up (0.0060s latency).
MAC Address: A4:83:E7:74:72:B9 (Apple)
Nmap scan report for 10.33.3.134
Host is up (0.012s latency).
MAC Address: 90:32:4B:A5:0E:61 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.3.136
Host is up (1.0s latency).
MAC Address: 34:A8:EB:B9:50:A4 (Apple)
Nmap scan report for 10.33.3.138
Host is up (0.69s latency).
MAC Address: 80:A5:89:3C:21:BD (AzureWave Technology)
Nmap scan report for 10.33.3.149
Host is up (0.055s latency).
MAC Address: DC:D9:16:32:0E:31 (Huawei Technologies)
Nmap scan report for 10.33.3.150
Host is up (0.20s latency).
MAC Address: C0:EE:FB:79:02:A4 (OnePlus Tech (Shenzhen))
Nmap scan report for 10.33.3.151
Host is up (0.096s latency).
MAC Address: 38:F9:D3:2F:EB:DE (Apple)
Nmap scan report for 10.33.3.152
Host is up (0.0040s latency).
MAC Address: 48:A4:72:7E:E6:59 (Intel Corporate)
Nmap scan report for 10.33.3.154
Host is up (0.031s latency).
MAC Address: F4:0F:24:23:C6:27 (Apple)
Nmap scan report for 10.33.3.155
Host is up (0.0060s latency).
MAC Address: 28:3F:69:C3:18:DE (Sony Mobile Communications)
Nmap scan report for 10.33.3.157
Host is up (0.010s latency).
MAC Address: BC:A8:A6:FE:A2:18 (Intel Corporate)
Nmap scan report for 10.33.3.161
Host is up (0.031s latency).
MAC Address: 18:F1:D8:A8:7F:AC (Apple)
Nmap scan report for 10.33.3.163
Host is up (0.0050s latency).
MAC Address: D8:F2:CA:0E:D5:8A (Intel Corporate)
Nmap scan report for 10.33.3.164
Host is up (0.011s latency).
MAC Address: F8:28:19:A1:2A:03 (Liteon Technology)
Nmap scan report for 10.33.3.165
Host is up (0.048s latency).
MAC Address: C8:21:58:1F:67:FB (Intel Corporate)
Nmap scan report for 10.33.3.166
Host is up (0.99s latency).
MAC Address: 14:87:6A:6E:12:5F (Unknown)
Nmap scan report for 10.33.3.170
Host is up (0.030s latency).
MAC Address: BC:3D:85:DD:85:18 (Huawei Technologies)
Nmap scan report for 10.33.3.171
Host is up (0.048s latency).
MAC Address: C0:E4:34:1B:6B:81 (Unknown)
Nmap scan report for 10.33.3.172
Host is up (0.10s latency).
MAC Address: 40:23:43:30:84:99 (Chongqing Fugui Electronics)
Nmap scan report for 10.33.3.173
Host is up (0.092s latency).
MAC Address: 98:2C:BC:F8:58:E5 (Unknown)
Nmap scan report for 10.33.3.174
Host is up (0.048s latency).
MAC Address: D0:57:7B:A5:BB:76 (Intel Corporate)
Nmap scan report for 10.33.3.178
Host is up (0.0080s latency).
MAC Address: C0:B6:F9:A9:FB:AA (Intel Corporate)
Nmap scan report for 10.33.3.181
Host is up (0.0050s latency).
MAC Address: F8:94:C2:2A:BF:CF (Intel Corporate)
Nmap scan report for 10.33.3.187
Host is up (0.18s latency).
MAC Address: 28:CF:E9:1D:11:A9 (Apple)
Nmap scan report for 10.33.3.192
Host is up (0.031s latency).
MAC Address: F4:8C:50:8D:60:AD (Intel Corporate)
Nmap scan report for 10.33.3.196
Host is up (0.39s latency).
MAC Address: 48:4B:AA:3D:28:25 (Apple)
Nmap scan report for 10.33.3.198
Host is up (0.0050s latency).
MAC Address: 80:91:33:1E:04:EB (AzureWave Technology)
Nmap scan report for 10.33.3.200
Host is up (0.011s latency).
MAC Address: 64:5D:86:CA:11:F6 (Intel Corporate)
Nmap scan report for 10.33.3.202
Host is up (0.042s latency).
MAC Address: 44:18:FD:F1:79:0E (Apple)
Nmap scan report for 10.33.3.203
Host is up (0.081s latency).
MAC Address: A4:D9:31:68:BC:2B (Apple)
Nmap scan report for 10.33.3.204
Host is up (0.73s latency).
MAC Address: 74:B5:87:8D:D8:92 (Apple)
Nmap scan report for 10.33.3.206
Host is up (0.0050s latency).
MAC Address: E4:70:B8:28:3A:20 (Intel Corporate)
Nmap scan report for 10.33.3.208
Host is up (0.0040s latency).
MAC Address: 8C:B8:4A:C8:E6:0E (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.3.209
Host is up (0.65s latency).
MAC Address: A8:5C:2C:19:28:8A (Apple)
Nmap scan report for 10.33.3.211
Host is up (0.15s latency).
MAC Address: 64:70:33:23:16:60 (Apple)
Nmap scan report for 10.33.3.212
Host is up (0.042s latency).
MAC Address: F4:60:E2:BB:FA:14 (Xiaomi Communications)
Nmap scan report for 10.33.3.214
Host is up (0.061s latency).
MAC Address: 88:11:96:B0:67:A6 (Huawei Technologies)
Nmap scan report for 10.33.3.216
Host is up (0.0070s latency).
MAC Address: 74:E5:F9:33:A0:A9 (Intel Corporate)
Nmap scan report for 10.33.3.219
Host is up (0.0050s latency).
MAC Address: 38:F9:D3:8D:69:4B (Apple)
Nmap scan report for 10.33.3.221
Host is up (0.013s latency).
MAC Address: A0:D3:7A:E8:EB:F3 (Intel Corporate)
Nmap scan report for 10.33.3.224
Host is up (0.011s latency).
MAC Address: 24:0A:64:1E:EE:2F (AzureWave Technology)
Nmap scan report for 10.33.3.225
Host is up (0.54s latency).
MAC Address: 08:C5:E1:F1:8E:13 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.3.226
Host is up (0.010s latency).
MAC Address: 34:F3:9A:74:6F:6C (Intel Corporate)
Nmap scan report for 10.33.3.236
Host is up (0.037s latency).
MAC Address: A0:CC:2B:1C:A1:3C (Murata Manufacturing)
Nmap scan report for 10.33.3.237
Host is up (0.12s latency).
MAC Address: 9C:5C:F9:3B:70:AB (Sony Mobile Communications)
Nmap scan report for 10.33.3.238
Host is up (0.0040s latency).
MAC Address: 7C:B0:C2:B4:31:4C (Intel Corporate)
Nmap scan report for 10.33.3.239
Host is up (0.82s latency).
MAC Address: B0:48:1A:D8:CA:31 (Apple)
Nmap scan report for 10.33.3.240
Host is up (0.45s latency).
MAC Address: 00:B3:62:81:39:E4 (Apple)
Nmap scan report for 10.33.3.241
Host is up (0.0090s latency).
MAC Address: D8:F2:CA:97:47:76 (Intel Corporate)
Nmap scan report for 10.33.3.242
Host is up (0.13s latency).
MAC Address: 18:01:F1:80:C8:50 (Xiaomi Communications)
Nmap scan report for 10.33.3.246
Host is up (0.19s latency).
MAC Address: 1C:CC:D6:8F:D6:13 (Unknown)
Nmap scan report for 10.33.3.248
Host is up (0.66s latency).
MAC Address: 80:0C:67:4F:FF:10 (Unknown)
Nmap scan report for 10.33.3.253
Host is up (0.0050s latency).
MAC Address: 00:12:00:40:4C:BF (Cisco Systems)
Nmap scan report for 10.33.3.254
Host is up (0.0040s latency).
MAC Address: 94:0C:6D:84:50:C8 (Tp-link Technologies)
Nmap scan report for 10.33.1.84
Host is up.
Nmap done: 1024 IP addresses (368 hosts up) scanned in 55.22 seconds

C:\Users\bapti>
nmap -sP 10.33.0.0/22
Starting Nmap 7.80 ( https://nmap.org ) at 2020-01-23 09:37 Paris, Madrid
Nmap scan report for 10.33.0.10
Host is up (0.022s latency).
MAC Address: AC:ED:5C:72:CD:BF (Intel Corporate)
Nmap scan report for 10.33.0.14
Host is up (0.030s latency).
MAC Address: 28:16:AD:AE:2A:2C (Intel Corporate)
Nmap scan report for 10.33.0.15
Host is up (0.023s latency).
MAC Address: B8:8A:60:87:9D:E4 (Intel Corporate)
Nmap scan report for 10.33.0.16
Host is up (0.10s latency).
MAC Address: 74:EB:80:E6:EB:AA (Samsung Electronics)
Nmap scan report for 10.33.0.17
Host is up (0.015s latency).
MAC Address: 7C:76:35:E5:3F:53 (Intel Corporate)
Nmap scan report for 10.33.0.22
Host is up (0.0050s latency).
MAC Address: 50:E0:85:B9:CF:80 (Intel Corporate)
Nmap scan report for 10.33.0.24
Host is up (0.029s latency).
MAC Address: 30:24:32:9E:73:20 (Intel Corporate)
Nmap scan report for 10.33.0.30
Host is up (0.020s latency).
MAC Address: 64:5D:86:4E:69:6B (Intel Corporate)
Nmap scan report for 10.33.0.35
Host is up (0.11s latency).
MAC Address: 78:4F:43:51:56:D3 (Apple)
Nmap scan report for 10.33.0.37
Host is up (0.055s latency).
MAC Address: 60:AB:67:DC:5E:D3 (Xiaomi Communications)
Nmap scan report for 10.33.0.39
Host is up (0.062s latency).
MAC Address: B4:D5:BD:E1:FA:46 (Intel Corporate)
Nmap scan report for 10.33.0.48
Host is up (0.11s latency).
MAC Address: 78:4F:43:00:A7:13 (Apple)
Nmap scan report for 10.33.0.49
Host is up (0.35s latency).
MAC Address: 00:CD:FE:C5:9B:58 (Apple)
Nmap scan report for 10.33.0.50
Host is up (0.033s latency).
MAC Address: E4:B3:18:48:36:68 (Intel Corporate)
Nmap scan report for 10.33.0.51
Host is up (0.026s latency).
MAC Address: 50:BC:96:68:CC:93 (Apple)
Nmap scan report for 10.33.0.52
Host is up (0.32s latency).
MAC Address: 30:10:B3:69:9B:B2 (Liteon Technology)
Nmap scan report for 10.33.0.54
Host is up (0.0040s latency).
MAC Address: AC:BC:32:90:C5:35 (Apple)
Nmap scan report for 10.33.0.55
Host is up (0.17s latency).
MAC Address: 00:5A:13:2F:CC:24 (Huawei Technologies)
Nmap scan report for 10.33.0.56
Host is up (0.027s latency).
MAC Address: DC:72:9B:98:38:7E (Huawei Technologies)
Nmap scan report for 10.33.0.57
Host is up (0.011s latency).
MAC Address: C8:FF:28:29:7A:D7 (Liteon Technology)
Nmap scan report for 10.33.0.58
Host is up (0.10s latency).
MAC Address: F4:BF:80:01:CC:1D (Huawei Technologies)
Nmap scan report for 10.33.0.60
Host is up (0.017s latency).
MAC Address: 14:4F:8A:12:88:E2 (Intel Corporate)
Nmap scan report for 10.33.0.62
Host is up (0.093s latency).
MAC Address: 88:66:A5:99:7F:B4 (Apple)
Nmap scan report for 10.33.0.63
Host is up (0.088s latency).
MAC Address: FC:18:3C:A0:0B:C7 (Apple)
Nmap scan report for 10.33.0.64
Host is up (0.096s latency).
MAC Address: 70:3C:69:78:9D:D0 (Apple)
Nmap scan report for 10.33.0.68
Host is up (0.019s latency).
MAC Address: 9C:B6:D0:18:94:4F (Rivet Networks)
Nmap scan report for 10.33.0.71
Host is up (0.056s latency).
MAC Address: F4:60:E2:E2:3E:00 (Xiaomi Communications)
Nmap scan report for 10.33.0.73
Host is up (0.10s latency).
MAC Address: 6C:8D:C1:04:8B:C7 (Apple)
Nmap scan report for 10.33.0.75
Host is up (0.060s latency).
MAC Address: B4:CB:57:12:30:1B (Guangdong Oppo Mobile Telecommunications)
Nmap scan report for 10.33.0.77
Host is up (0.012s latency).
MAC Address: DC:A2:66:29:52:A1 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.0.80
Host is up (0.057s latency).
MAC Address: 44:03:2C:EC:B1:75 (Intel Corporate)
Nmap scan report for 10.33.0.81
Host is up (0.013s latency).
MAC Address: 9E:B6:C4:14:79:C7 (Unknown)
Nmap scan report for 10.33.0.83
Host is up (0.013s latency).
MAC Address: 9C:B6:D0:09:AB:6F (Rivet Networks)
Nmap scan report for 10.33.0.86
Host is up (0.19s latency).
MAC Address: A4:D9:31:1A:F3:87 (Apple)
Nmap scan report for 10.33.0.88
Host is up (0.19s latency).
MAC Address: 9C:E3:3F:95:57:49 (Apple)
Nmap scan report for 10.33.0.93
Host is up (0.0070s latency).
MAC Address: 94:B8:6D:6F:C2:CD (Intel Corporate)
Nmap scan report for 10.33.0.94
Host is up (0.079s latency).
MAC Address: 10:02:B5:57:03:50 (Intel Corporate)
Nmap scan report for 10.33.0.96
Host is up (0.0070s latency).
MAC Address: 48:F1:7F:28:E0:83 (Intel Corporate)
Nmap scan report for 10.33.0.98
Host is up (0.098s latency).
MAC Address: 6C:4D:73:91:72:75 (Apple)
Nmap scan report for 10.33.0.103
Host is up (0.13s latency).
MAC Address: A4:E9:75:BC:0E:97 (Apple)
Nmap scan report for 10.33.0.105
Host is up (0.012s latency).
MAC Address: 88:E9:FE:75:39:D6 (Apple)
Nmap scan report for 10.33.0.107
Host is up (0.24s latency).
MAC Address: 1C:B7:96:EA:A9:A5 (Huawei Technologies)
Nmap scan report for 10.33.0.108
Host is up (0.10s latency).
MAC Address: 20:47:DA:65:0C:3D (Xiaomi Communications)
Nmap scan report for 10.33.0.110
Host is up (0.17s latency).
MAC Address: B4:8B:19:1E:60:99 (Apple)
Nmap scan report for 10.33.0.115
Host is up (0.012s latency).
MAC Address: F8:DA:0C:01:40:1D (Hon Hai Precision Ind.)
Nmap scan report for 10.33.0.118
Host is up (0.21s latency).
MAC Address: B0:FC:36:B6:2E:97 (CyberTAN Technology)
Nmap scan report for 10.33.0.119
Host is up (0.089s latency).
MAC Address: 58:20:59:00:08:60 (Xiaomi Communications)
Nmap scan report for 10.33.0.120
Host is up (0.15s latency).
MAC Address: 44:18:FD:4B:72:88 (Apple)
Nmap scan report for 10.33.0.121
Host is up (0.32s latency).
MAC Address: 58:40:4E:15:96:EA (Apple)
Nmap scan report for 10.33.0.125
Host is up (0.059s latency).
MAC Address: E0:B5:2D:ED:BD:D1 (Apple)
Nmap scan report for 10.33.0.128
Host is up (1.2s latency).
MAC Address: 40:9C:28:2C:CF:E0 (Apple)
Nmap scan report for 10.33.0.134
Host is up (0.0070s latency).
MAC Address: 94:65:2D:85:2B:0C (OnePlus Technology (Shenzhen))
Nmap scan report for 10.33.0.137
Host is up (0.076s latency).
MAC Address: 50:E0:85:F5:0B:45 (Intel Corporate)
Nmap scan report for 10.33.0.141
Host is up (0.11s latency).
MAC Address: 58:20:59:08:F8:EB (Xiaomi Communications)
Nmap scan report for 10.33.0.148
Host is up (0.097s latency).
MAC Address: B0:55:08:C0:E1:E6 (Huawei Technologies)
Nmap scan report for 10.33.0.150
Host is up (0.031s latency).
MAC Address: DC:F5:05:D2:9A:67 (AzureWave Technology)
Nmap scan report for 10.33.0.154
Host is up (0.0070s latency).
MAC Address: 0C:96:E6:88:63:D5 (Cloud Network Technology (Samoa) Limited)
Nmap scan report for 10.33.0.157
Host is up (0.0050s latency).
MAC Address: 38:00:25:8A:38:7E (Intel Corporate)
Nmap scan report for 10.33.0.160
Host is up (1.0s latency).
MAC Address: F8:87:F1:C8:C4:45 (Apple)
Nmap scan report for 10.33.0.162
Host is up (0.0070s latency).
MAC Address: DC:08:0F:3D:CB:D8 (Apple)
Nmap scan report for 10.33.0.163
Host is up (0.020s latency).
MAC Address: D4:3B:04:B7:B7:AE (Intel Corporate)
Nmap scan report for 10.33.0.166
Host is up (0.030s latency).
MAC Address: 80:91:33:C9:37:83 (AzureWave Technology)
Nmap scan report for 10.33.0.169
Host is up (0.0080s latency).
MAC Address: A4:83:E7:CC:F9:68 (Apple)
Nmap scan report for 10.33.0.170
Host is up (0.029s latency).
MAC Address: 0C:96:E6:3C:3B:6B (Cloud Network Technology (Samoa) Limited)
Nmap scan report for 10.33.0.171
Host is up (1.2s latency).
MAC Address: 80:91:33:1E:03:7B (AzureWave Technology)
Nmap scan report for 10.33.0.174
Host is up (0.22s latency).
MAC Address: A4:E9:75:DB:04:84 (Apple)
Nmap scan report for 10.33.0.179
Host is up (0.0040s latency).
MAC Address: C0:B6:F9:14:16:7B (Intel Corporate)
Nmap scan report for 10.33.0.180
Host is up (0.17s latency).
MAC Address: 00:CD:FE:C7:77:E1 (Apple)
Nmap scan report for 10.33.0.193
Host is up (0.010s latency).
MAC Address: A0:51:0B:6C:B9:20 (Intel Corporate)
Nmap scan report for 10.33.0.195
Host is up (0.0090s latency).
MAC Address: C0:EE:FB:DD:78:C3 (OnePlus Tech (Shenzhen))
Nmap scan report for 10.33.0.198
Host is up (0.0050s latency).
MAC Address: 0C:54:15:C3:F0:0F (Intel Corporate)
Nmap scan report for 10.33.0.205
Host is up (0.074s latency).
MAC Address: F0:98:9D:D7:35:03 (Apple)
Nmap scan report for 10.33.0.206
Host is up (0.0070s latency).
MAC Address: D0:C6:37:3C:59:A1 (Unknown)
Nmap scan report for 10.33.0.209
Host is up (0.22s latency).
MAC Address: B0:89:00:A6:C5:1A (Huawei Technologies)
Nmap scan report for 10.33.0.211
Host is up (0.23s latency).
MAC Address: 80:D6:05:2E:86:73 (Apple)
Nmap scan report for 10.33.0.214
Host is up (0.0090s latency).
MAC Address: C0:B5:D7:C2:BE:1F (Chongqing Fugui Electronics)
Nmap scan report for 10.33.0.215
Host is up (0.25s latency).
MAC Address: 06:99:0B:8F:95:A5 (Unknown)
Nmap scan report for 10.33.0.218
Host is up (0.011s latency).
MAC Address: D4:25:8B:82:1B:6C (Intel Corporate)
Nmap scan report for 10.33.0.224
Host is up (0.014s latency).
MAC Address: F8:28:19:A0:CB:D1 (Liteon Technology)
Nmap scan report for 10.33.0.225
Host is up (0.082s latency).
MAC Address: 74:B5:87:57:A7:D4 (Apple)
Nmap scan report for 10.33.0.227
Host is up (0.045s latency).
MAC Address: 44:18:FD:33:DA:C1 (Apple)
Nmap scan report for 10.33.0.228
Host is up (0.51s latency).
MAC Address: 60:A3:7D:AD:16:A1 (Apple)
Nmap scan report for 10.33.0.229
Host is up (0.13s latency).
MAC Address: 4C:D1:A1:29:1C:F6 (Huawei Technologies)
Nmap scan report for 10.33.0.234
Host is up (1.1s latency).
MAC Address: 10:94:BB:3B:2D:4D (Apple)
Nmap scan report for 10.33.0.239
Host is up (0.058s latency).
MAC Address: F0:18:98:05:BE:4D (Apple)
Nmap scan report for 10.33.0.241
Host is up (0.053s latency).
MAC Address: 30:45:96:DA:B4:F5 (Huawei Technologies)
Nmap scan report for 10.33.0.242
Host is up (0.0050s latency).
MAC Address: 38:CA:DA:F0:86:BE (Apple)
Nmap scan report for 10.33.0.251
Host is up (0.0060s latency).
MAC Address: C0:B5:D7:47:CE:E1 (Chongqing Fugui Electronics)
Nmap scan report for 10.33.0.252
Host is up (0.094s latency).
MAC Address: A4:83:E7:6B:BC:CE (Apple)
Nmap scan report for 10.33.0.255
Host is up (0.0050s latency).
MAC Address: 68:07:15:12:9E:68 (Intel Corporate)
Nmap scan report for 10.33.1.1
Host is up (0.024s latency).
MAC Address: 30:24:32:CA:8D:9D (Intel Corporate)
Nmap scan report for 10.33.1.9
Host is up (0.068s latency).
MAC Address: DC:F5:05:AB:6E:59 (AzureWave Technology)
Nmap scan report for 10.33.1.12
Host is up (0.23s latency).
MAC Address: BC:3D:85:A1:33:3E (Huawei Technologies)
Nmap scan report for 10.33.1.13
Host is up (0.0090s latency).
MAC Address: 98:01:A7:D1:6C:29 (Apple)
Nmap scan report for 10.33.1.14
Host is up (0.029s latency).
MAC Address: 08:D4:0C:7E:FC:3E (Intel Corporate)
Nmap scan report for 10.33.1.18
Host is up (0.010s latency).
MAC Address: 90:78:41:CB:04:17 (Intel Corporate)
Nmap scan report for 10.33.1.24
Host is up (0.11s latency).
MAC Address: 38:F9:D3:E8:DA:3E (Apple)
Nmap scan report for 10.33.1.27
Host is up (0.0080s latency).
MAC Address: 7C:2A:31:0D:6F:60 (Intel Corporate)
Nmap scan report for 10.33.1.33
Host is up (0.0080s latency).
MAC Address: 3C:77:E6:0F:E7:39 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.38
Host is up (0.047s latency).
MAC Address: A4:5E:60:0D:EE:71 (Apple)
Nmap scan report for 10.33.1.43
Host is up (0.10s latency).
MAC Address: 38:F9:D3:2D:F1:80 (Apple)
Nmap scan report for 10.33.1.45
Host is up (0.0070s latency).
MAC Address: 94:65:2D:40:58:81 (OnePlus Technology (Shenzhen))
Nmap scan report for 10.33.1.47
Host is up (0.051s latency).
MAC Address: 60:F1:89:E7:B0:D4 (Murata Manufacturing)
Nmap scan report for 10.33.1.50
Host is up (0.21s latency).
MAC Address: 80:D6:05:28:EF:DA (Apple)
Nmap scan report for 10.33.1.53
Host is up (0.0060s latency).
MAC Address: 48:45:20:5C:76:C3 (Intel Corporate)
Nmap scan report for 10.33.1.54
Host is up (0.14s latency).
MAC Address: 7C:01:91:86:93:63 (Apple)
Nmap scan report for 10.33.1.56
Host is up (0.0040s latency).
MAC Address: AC:ED:5C:AF:72:9C (Intel Corporate)
Nmap scan report for 10.33.1.57
Host is up (0.022s latency).
MAC Address: EE:28:73:C1:10:C6 (Unknown)
Nmap scan report for 10.33.1.62
Host is up (0.094s latency).
MAC Address: B0:70:2D:B8:9F:24 (Apple)
Nmap scan report for 10.33.1.66
Host is up (0.070s latency).
MAC Address: A0:99:9B:1C:74:A7 (Apple)
Nmap scan report for 10.33.1.67
Host is up (0.37s latency).
MAC Address: A4:B8:05:7C:1A:66 (Apple)
Nmap scan report for 10.33.1.68
Host is up (0.017s latency).
MAC Address: 50:E0:85:53:92:B0 (Intel Corporate)
Nmap scan report for 10.33.1.71
Host is up (0.010s latency).
MAC Address: A0:51:0B:6D:11:22 (Intel Corporate)
Nmap scan report for 10.33.1.72
Host is up (0.11s latency).
MAC Address: 7C:B2:7D:3B:C4:69 (Intel Corporate)
Nmap scan report for 10.33.1.73
Host is up (0.0090s latency).
MAC Address: 74:DF:BF:2D:07:7E (Liteon Technology)
Nmap scan report for 10.33.1.79
Host is up (0.045s latency).
MAC Address: 74:E5:F9:F3:20:E6 (Intel Corporate)
Nmap scan report for 10.33.1.81
Host is up (0.0030s latency).
MAC Address: 98:3B:8F:DE:BF:39 (Intel Corporate)
Nmap scan report for 10.33.1.82
Host is up (0.080s latency).
MAC Address: 58:B1:0F:80:AC:68 (Samsung Electronics)
Nmap scan report for 10.33.1.83
Host is up (0.18s latency).
MAC Address: 34:79:16:1F:25:B8 (Huawei Technologies)
Nmap scan report for 10.33.1.86
Host is up (0.0060s latency).
MAC Address: 9C:B6:D0:60:F6:BB (Rivet Networks)
Nmap scan report for 10.33.1.87
Host is up (0.010s latency).
MAC Address: 70:C9:4E:69:69:DD (Liteon Technology)
Nmap scan report for 10.33.1.90
Host is up (0.0060s latency).
MAC Address: 94:B8:6D:91:49:CF (Intel Corporate)
Nmap scan report for 10.33.1.92
Host is up (0.096s latency).
MAC Address: 38:F9:D3:BB:80:36 (Apple)
Nmap scan report for 10.33.1.96
Host is up (0.0060s latency).
MAC Address: 5C:E0:C5:85:EC:88 (Intel Corporate)
Nmap scan report for 10.33.1.97
Host is up (0.13s latency).
MAC Address: 48:2C:A0:97:2F:6E (Xiaomi Communications)
Nmap scan report for 10.33.1.99
Host is up (0.0070s latency).
MAC Address: 08:71:90:8A:BE:3E (Intel Corporate)
Nmap scan report for 10.33.1.100
Host is up (0.010s latency).
MAC Address: 9C:30:5B:AC:FF:F7 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.105
Host is up (0.92s latency).
MAC Address: A8:5C:2C:58:56:59 (Apple)
Nmap scan report for 10.33.1.106
Host is up (1.6s latency).
MAC Address: 90:60:F1:65:14:79 (Apple)
Nmap scan report for 10.33.1.108
Host is up (0.47s latency).
MAC Address: 98:CA:33:BC:C3:71 (Apple)
Nmap scan report for 10.33.1.112
Host is up (0.12s latency).
MAC Address: E0:E6:2E:37:2A:3A (TCT mobile)
Nmap scan report for 10.33.1.114
Host is up (0.010s latency).
MAC Address: 88:B1:11:B9:41:F0 (Intel Corporate)
Nmap scan report for 10.33.1.116
Host is up (0.13s latency).
MAC Address: 38:53:9C:C3:C1:27 (Apple)
Nmap scan report for 10.33.1.118
Host is up (0.10s latency).
MAC Address: F0:18:98:30:AE:A8 (Apple)
Nmap scan report for 10.33.1.122
Host is up (0.0050s latency).
MAC Address: 90:78:41:61:D0:46 (Intel Corporate)
Nmap scan report for 10.33.1.128
Host is up (0.089s latency).
MAC Address: C0:BD:C8:40:96:27 (Samsung Electronics)
Nmap scan report for 10.33.1.129
Host is up (0.22s latency).
MAC Address: E4:34:93:5A:1C:5C (Huawei Technologies)
Nmap scan report for 10.33.1.132
Host is up (0.013s latency).
MAC Address: 30:24:32:DF:27:9E (Intel Corporate)
Nmap scan report for 10.33.1.135
Host is up (0.012s latency).
MAC Address: A8:6D:AA:54:07:B3 (Intel Corporate)
Nmap scan report for 10.33.1.136
Host is up (0.19s latency).
MAC Address: 08:C5:E1:2D:58:23 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.1.137
Host is up (0.067s latency).
MAC Address: F4:5C:89:C9:2A:5D (Apple)
Nmap scan report for 10.33.1.138
Host is up (0.013s latency).
MAC Address: C8:3D:D4:7A:CD:FF (CyberTAN Technology)
Nmap scan report for 10.33.1.139
Host is up (0.085s latency).
MAC Address: 48:3C:0C:1C:5B:44 (Huawei Technologies)
Nmap scan report for 10.33.1.141
Host is up (0.023s latency).
MAC Address: 6C:00:6B:4E:69:33 (Samsung Electronics)
Nmap scan report for 10.33.1.142
Host is up (0.056s latency).
MAC Address: D8:0B:9A:15:3E:B0 (Unknown)
Nmap scan report for 10.33.1.146
Host is up (0.045s latency).
MAC Address: EC:2C:E2:AD:BA:DC (Apple)
Nmap scan report for 10.33.1.150
Host is up (0.25s latency).
MAC Address: 74:B5:87:AD:EE:97 (Apple)
Nmap scan report for 10.33.1.155
Host is up (0.0050s latency).
MAC Address: DC:F5:05:5B:50:87 (AzureWave Technology)
Nmap scan report for 10.33.1.162
Host is up (0.017s latency).
MAC Address: 50:3E:AA:2D:33:8A (Tp-link Technologies)
Nmap scan report for 10.33.1.164
Host is up (0.0050s latency).
MAC Address: C0:9A:D0:B4:91:74 (Apple)
Nmap scan report for 10.33.1.167
Host is up (0.19s latency).
MAC Address: 40:9C:28:93:97:72 (Apple)
Nmap scan report for 10.33.1.171
Host is up (0.011s latency).
MAC Address: FC:77:74:60:58:5B (Intel Corporate)
Nmap scan report for 10.33.1.175
Host is up (0.16s latency).
MAC Address: 58:CB:52:8E:5B:1F (Google)
Nmap scan report for 10.33.1.177
Host is up (0.0060s latency).
MAC Address: 74:70:FD:E5:89:C2 (Intel Corporate)
Nmap scan report for 10.33.1.179
Host is up (0.014s latency).
MAC Address: B0:10:41:F8:A5:43 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.185
Host is up (0.0040s latency).
MAC Address: D4:D2:52:85:23:16 (Intel Corporate)
Nmap scan report for 10.33.1.189
Host is up (0.0060s latency).
MAC Address: 74:E5:F9:D7:9E:D4 (Intel Corporate)
Nmap scan report for 10.33.1.194
Host is up (0.086s latency).
MAC Address: 28:16:A8:62:87:7D (Microsoft)
Nmap scan report for 10.33.1.195
Host is up (0.019s latency).
MAC Address: 90:78:41:AA:C2:29 (Intel Corporate)
Nmap scan report for 10.33.1.196
Host is up (0.11s latency).
MAC Address: 34:29:12:E7:18:DF (Huawei Technologies)
Nmap scan report for 10.33.1.197
Host is up (0.52s latency).
MAC Address: 48:4B:AA:E3:1B:93 (Apple)
Nmap scan report for 10.33.1.201
Host is up (0.066s latency).
MAC Address: 4C:DD:31:BE:3A:0B (Samsung Electronics)
Nmap scan report for 10.33.1.202
Host is up (0.0050s latency).
MAC Address: 1C:1B:B5:A1:C0:7A (Intel Corporate)
Nmap scan report for 10.33.1.213
Host is up (0.0070s latency).
MAC Address: 3C:95:09:50:9C:33 (Liteon Technology)
Nmap scan report for 10.33.1.217
Host is up (0.0090s latency).
MAC Address: 64:5D:86:C1:1B:73 (Intel Corporate)
Nmap scan report for 10.33.1.218
Host is up (0.14s latency).
MAC Address: A0:56:F3:38:4B:D5 (Apple)
Nmap scan report for 10.33.1.219
Host is up (0.38s latency).
MAC Address: D8:55:75:87:0D:BE (Samsung Electronics)
Nmap scan report for 10.33.1.220
Host is up (0.28s latency).
MAC Address: D4:61:2E:EF:E6:6D (Huawei Technologies)
Nmap scan report for 10.33.1.221
Host is up (0.047s latency).
MAC Address: 54:13:79:7C:7D:BF (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.222
Host is up (0.032s latency).
MAC Address: AC:1F:74:0A:5C:48 (Apple)
Nmap scan report for 10.33.1.223
Host is up (0.016s latency).
MAC Address: 5C:E0:C5:26:78:89 (Intel Corporate)
Nmap scan report for 10.33.1.224
Host is up (0.0080s latency).
MAC Address: 80:B0:3D:C2:5C:1B (Apple)
Nmap scan report for 10.33.1.225
Host is up (0.0090s latency).
MAC Address: D0:C5:D3:5F:8A:6F (AzureWave Technology)
Nmap scan report for 10.33.1.234
Host is up (0.0070s latency).
MAC Address: C0:B6:F9:CB:CB:E0 (Intel Corporate)
Nmap scan report for 10.33.1.235
Host is up (0.0050s latency).
MAC Address: AC:FD:CE:8F:D8:29 (Intel Corporate)
Nmap scan report for 10.33.1.236
Host is up (0.039s latency).
MAC Address: 90:78:41:D0:20:82 (Intel Corporate)
Nmap scan report for 10.33.1.238
Host is up (0.0060s latency).
MAC Address: 44:03:2C:47:04:4B (Intel Corporate)
Nmap scan report for 10.33.1.240
Host is up (0.29s latency).
MAC Address: 00:B3:62:02:ED:5A (Apple)
Nmap scan report for 10.33.1.241
Host is up (0.092s latency).
MAC Address: F4:5C:89:BE:22:0D (Apple)
Nmap scan report for 10.33.1.244
Host is up (0.0070s latency).
MAC Address: A8:6D:AA:E8:65:43 (Intel Corporate)
Nmap scan report for 10.33.1.246
Host is up (0.039s latency).
MAC Address: F8:87:F1:30:FF:DE (Apple)
Nmap scan report for 10.33.1.249
Host is up (0.10s latency).
MAC Address: F0:18:98:4D:21:1A (Apple)
Nmap scan report for 10.33.2.3
Host is up (0.011s latency).
MAC Address: F4:96:34:EA:59:C5 (Intel Corporate)
Nmap scan report for 10.33.2.10
Host is up (0.0050s latency).
MAC Address: B4:6D:83:A5:AF:2D (Intel Corporate)
Nmap scan report for 10.33.2.13
Host is up (0.082s latency).
MAC Address: 88:E9:FE:68:52:C7 (Apple)
Nmap scan report for 10.33.2.15
Host is up (0.069s latency).
MAC Address: 40:9F:38:E4:8D:37 (AzureWave Technology)
Nmap scan report for 10.33.2.17
Host is up (0.034s latency).
MAC Address: 58:40:4E:7B:C5:20 (Apple)
Nmap scan report for 10.33.2.18
Host is up (0.030s latency).
MAC Address: F8:28:19:58:40:55 (Liteon Technology)
Nmap scan report for 10.33.2.21
Host is up (0.15s latency).
MAC Address: C0:E8:62:A0:63:EB (Apple)
Nmap scan report for 10.33.2.22
Host is up (0.041s latency).
MAC Address: DC:F5:05:14:34:8F (AzureWave Technology)
Nmap scan report for 10.33.2.25
Host is up (0.013s latency).
MAC Address: 64:5D:86:5A:08:84 (Intel Corporate)
Nmap scan report for 10.33.2.31
Host is up (0.080s latency).
MAC Address: DC:8B:28:89:67:4B (Intel Corporate)
Nmap scan report for 10.33.2.32
Host is up (0.078s latency).
MAC Address: 98:01:A7:A3:08:89 (Apple)
Nmap scan report for 10.33.2.37
Host is up (0.078s latency).
MAC Address: 94:B8:6D:47:04:0F (Intel Corporate)
Nmap scan report for 10.33.2.40
Host is up (0.0090s latency).
MAC Address: D0:AB:D5:C7:1A:28 (Intel Corporate)
Nmap scan report for 10.33.2.51
Host is up (0.0050s latency).
MAC Address: 48:A4:72:6E:EA:A1 (Intel Corporate)
Nmap scan report for 10.33.2.62
Host is up (0.051s latency).
MAC Address: 10:02:B5:A2:60:AC (Intel Corporate)
Nmap scan report for 10.33.2.69
Host is up (0.032s latency).
MAC Address: 38:F9:D3:3C:01:7D (Apple)
Nmap scan report for 10.33.2.70
Host is up (0.057s latency).
MAC Address: 40:4D:7F:C4:EB:E5 (Apple)
Nmap scan report for 10.33.2.71
Host is up (0.11s latency).
MAC Address: E0:DC:FF:EE:02:21 (Xiaomi Communications)
Nmap scan report for 10.33.2.74
Host is up (0.010s latency).
MAC Address: D4:61:9D:30:A2:60 (Apple)
Nmap scan report for 10.33.2.75
Host is up (0.0070s latency).
MAC Address: 00:28:F8:05:9F:A1 (Intel Corporate)
Nmap scan report for 10.33.2.76
Host is up (0.038s latency).
MAC Address: D0:D2:B0:26:45:80 (Apple)
Nmap scan report for 10.33.2.81
Host is up (0.22s latency).
MAC Address: 34:08:BC:B2:B6:84 (Apple)
Nmap scan report for 10.33.2.83
Host is up (0.12s latency).
MAC Address: 38:00:25:AC:79:DE (Intel Corporate)
Nmap scan report for 10.33.2.87
Host is up (0.18s latency).
MAC Address: 14:C2:13:9C:17:FF (Apple)
Nmap scan report for 10.33.2.91
Host is up (0.42s latency).
MAC Address: 00:5B:94:07:67:7B (Apple)
Nmap scan report for 10.33.2.100
Host is up (0.0090s latency).
MAC Address: 68:EC:C5:73:40:CE (Intel Corporate)
Nmap scan report for 10.33.2.104
Host is up (0.050s latency).
MAC Address: 00:DB:70:A5:22:E6 (Apple)
Nmap scan report for 10.33.2.106
Host is up (0.17s latency).
MAC Address: A4:93:3F:99:61:59 (Huawei Technologies)
Nmap scan report for 10.33.2.108
Host is up (0.11s latency).
MAC Address: D0:C6:37:81:9E:49 (Unknown)
Nmap scan report for 10.33.2.111
Host is up (0.088s latency).
MAC Address: A4:83:E7:56:DD:32 (Apple)
Nmap scan report for 10.33.2.114
Host is up (0.12s latency).
MAC Address: D8:CE:3A:91:77:3D (Xiaomi Communications)
Nmap scan report for 10.33.2.119
Host is up (0.15s latency).
MAC Address: 08:71:90:B0:FE:00 (Intel Corporate)
Nmap scan report for 10.33.2.120
Host is up (0.011s latency).
MAC Address: 94:53:30:8E:9D:C7 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.2.123
Host is up (0.0080s latency).
MAC Address: 90:F0:52:54:2B:4D (Meizu Technology)
Nmap scan report for 10.33.2.124
Host is up (0.078s latency).
MAC Address: 30:24:32:3D:37:95 (Intel Corporate)
Nmap scan report for 10.33.2.125
Host is up (0.076s latency).
MAC Address: 98:5F:D3:3C:5A:67 (Microsoft)
Nmap scan report for 10.33.2.126
Host is up (0.020s latency).
MAC Address: B4:69:21:F0:E3:26 (Intel Corporate)
Nmap scan report for 10.33.2.127
Host is up (0.42s latency).
MAC Address: 6C:C7:EC:36:8D:CB (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.128
Host is up (0.28s latency).
MAC Address: D4:38:9C:8A:7B:48 (Sony Mobile Communications)
Nmap scan report for 10.33.2.131
Host is up (0.13s latency).
MAC Address: 20:34:FB:A5:95:D9 (Xiaomi Communications)
Nmap scan report for 10.33.2.134
Host is up (0.098s latency).
MAC Address: CC:44:63:6E:0D:99 (Apple)
Nmap scan report for 10.33.2.137
Host is up (0.0060s latency).
MAC Address: 74:40:BB:0B:1E:91 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.2.139
Host is up (0.097s latency).
MAC Address: 08:C5:E1:DB:A0:F2 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.140
Host is up (0.024s latency).
MAC Address: DC:FB:48:1D:25:BD (Intel Corporate)
Nmap scan report for 10.33.2.141
Host is up (0.15s latency).
MAC Address: 70:4D:7B:AD:D8:05 (Asustek Computer)
Nmap scan report for 10.33.2.144
Host is up (0.42s latency).
MAC Address: A4:08:EA:B1:7D:ED (Murata Manufacturing)
Nmap scan report for 10.33.2.145
Host is up (0.0050s latency).
MAC Address: 30:24:32:4A:7D:AB (Intel Corporate)
Nmap scan report for 10.33.2.147
Host is up (0.0080s latency).
MAC Address: A4:02:B9:7C:25:EA (Intel Corporate)
Nmap scan report for 10.33.2.148
Host is up (0.013s latency).
MAC Address: 88:B1:11:5A:63:33 (Intel Corporate)
Nmap scan report for 10.33.2.150
Host is up (0.0090s latency).
MAC Address: 9C:B6:D0:20:69:A9 (Rivet Networks)
Nmap scan report for 10.33.2.152
Host is up (0.0080s latency).
MAC Address: 18:5E:0F:D8:ED:7F (Intel Corporate)
Nmap scan report for 10.33.2.153
Host is up (0.58s latency).
MAC Address: F8:87:F1:C9:DF:EF (Apple)
Nmap scan report for 10.33.2.154
Host is up (0.36s latency).
MAC Address: 08:C5:E1:1E:80:40 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.155
Host is up (0.38s latency).
MAC Address: A0:C9:A0:8F:69:D6 (Murata Manufacturing)
Nmap scan report for 10.33.2.156
Host is up (0.0060s latency).
MAC Address: 9C:B6:D0:F1:32:37 (Rivet Networks)
Nmap scan report for 10.33.2.163
Host is up (0.044s latency).
MAC Address: A4:5E:60:C1:58:B3 (Apple)
Nmap scan report for 10.33.2.166
Host is up (0.010s latency).
MAC Address: 20:79:18:A8:EF:8F (Intel Corporate)
Nmap scan report for 10.33.2.170
Host is up (0.20s latency).
MAC Address: F8:16:54:49:74:33 (Intel Corporate)
Nmap scan report for 10.33.2.174
Host is up (0.011s latency).
MAC Address: 48:F1:7F:57:55:80 (Intel Corporate)
Nmap scan report for 10.33.2.177
Host is up (0.11s latency).
MAC Address: 4C:DD:31:CF:97:0C (Samsung Electronics)
Nmap scan report for 10.33.2.178
Host is up (0.016s latency).
MAC Address: 80:E6:50:14:60:2A (Apple)
Nmap scan report for 10.33.2.180
Host is up (0.11s latency).
MAC Address: 70:3C:69:D3:1D:67 (Apple)
Nmap scan report for 10.33.2.183
Host is up (0.79s latency).
MAC Address: 30:07:4D:D0:5F:40 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.186
Host is up (0.0080s latency).
MAC Address: D0:AB:D5:C5:4A:04 (Intel Corporate)
Nmap scan report for 10.33.2.194
Host is up (0.064s latency).
MAC Address: 38:F9:D3:81:EA:7D (Apple)
Nmap scan report for 10.33.2.200
Host is up (0.011s latency).
MAC Address: BC:A8:A6:9D:90:77 (Intel Corporate)
Nmap scan report for 10.33.2.201
Host is up (0.095s latency).
MAC Address: EC:10:7B:06:5F:4B (Samsung Electronics)
Nmap scan report for 10.33.2.211
Host is up (0.046s latency).
MAC Address: F0:18:98:1B:E7:93 (Apple)
Nmap scan report for 10.33.2.215
Host is up (0.13s latency).
MAC Address: F0:0F:EC:2F:A2:7D (Huawei Technologies)
Nmap scan report for 10.33.2.219
Host is up (0.019s latency).
MAC Address: C4:98:80:EF:C1:23 (Apple)
Nmap scan report for 10.33.2.221
Host is up (0.30s latency).
MAC Address: A8:9C:ED:A1:E9:E8 (Xiaomi Communications)
Nmap scan report for 10.33.2.222
Host is up (0.83s latency).
MAC Address: C0:A5:3E:30:64:23 (Apple)
Nmap scan report for 10.33.2.223
Host is up (0.23s latency).
MAC Address: C4:B3:01:D5:47:39 (Apple)
Nmap scan report for 10.33.2.228
Host is up (0.0050s latency).
MAC Address: 34:E1:2D:DC:AA:0F (Intel Corporate)
Nmap scan report for 10.33.2.229
Host is up (0.35s latency).
MAC Address: 08:C5:E1:DC:6C:3E (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.230
Host is up (0.0090s latency).
MAC Address: DA:4E:6C:67:D2:FA (Unknown)
Nmap scan report for 10.33.2.231
Host is up (0.0040s latency).
MAC Address: 9C:B6:D0:FE:B0:D5 (Rivet Networks)
Nmap scan report for 10.33.2.234
Host is up (0.27s latency).
MAC Address: 04:72:95:24:AD:73 (Unknown)
Nmap scan report for 10.33.2.235
Host is up (0.071s latency).
MAC Address: B8:5D:0A:67:0E:8B (Apple)
Nmap scan report for 10.33.2.237
Host is up (0.28s latency).
MAC Address: 98:09:CF:40:FE:4D (OnePlus Technology (Shenzhen))
Nmap scan report for 10.33.2.238
Host is up (0.0050s latency).
MAC Address: 90:78:41:8C:8D:3B (Intel Corporate)
Nmap scan report for 10.33.2.241
Host is up (0.017s latency).
MAC Address: B0:72:BF:85:17:D1 (Murata Manufacturing)
Nmap scan report for 10.33.2.242
Host is up (0.0090s latency).
MAC Address: A0:51:0B:13:47:37 (Intel Corporate)
Nmap scan report for 10.33.2.243
Host is up (0.078s latency).
MAC Address: AC:BC:32:91:0B:57 (Apple)
Nmap scan report for 10.33.2.244
Host is up (0.049s latency).
MAC Address: F4:BF:80:C0:A5:8A (Huawei Technologies)
Nmap scan report for 10.33.2.247
Host is up (0.013s latency).
MAC Address: FC:01:7C:84:B2:0B (Hon Hai Precision Ind.)
Nmap scan report for 10.33.2.250
Host is up (0.097s latency).
MAC Address: 0C:70:4A:F8:63:B2 (Huawei Technologies)
Nmap scan report for 10.33.2.252
Host is up (0.080s latency).
MAC Address: 88:E9:FE:81:1A:AD (Apple)
Nmap scan report for 10.33.2.254
Host is up (0.076s latency).
MAC Address: 48:83:B4:CD:D6:9D (Guangdong Oppo Mobile Telecommunications)
Nmap scan report for 10.33.2.255
Host is up (0.0080s latency).
MAC Address: 80:A5:89:9D:A7:8D (AzureWave Technology)
Nmap scan report for 10.33.3.4
Host is up (0.0060s latency).
MAC Address: D8:F2:CA:40:4E:21 (Intel Corporate)
Nmap scan report for 10.33.3.8
Host is up (0.0050s latency).
MAC Address: 18:5E:0F:D9:F5:3F (Intel Corporate)
Nmap scan report for 10.33.3.10
Host is up (0.019s latency).
MAC Address: E4:2B:34:17:EC:69 (Apple)
Nmap scan report for 10.33.3.15
Host is up (1.6s latency).
MAC Address: 40:98:AD:0A:0B:33 (Apple)
Nmap scan report for 10.33.3.19
Host is up (0.025s latency).
MAC Address: 38:00:25:4A:81:07 (Intel Corporate)
Nmap scan report for 10.33.3.22
Host is up (0.25s latency).
MAC Address: F0:98:9D:4F:3C:15 (Apple)
Nmap scan report for 10.33.3.23
Host is up (0.14s latency).
MAC Address: 8C:85:90:0A:73:40 (Apple)
Nmap scan report for 10.33.3.29
Host is up (0.12s latency).
MAC Address: 90:94:97:79:BE:D0 (Huawei Technologies)
Nmap scan report for 10.33.3.36
Host is up (0.77s latency).
MAC Address: 40:98:AD:22:D7:61 (Apple)
Nmap scan report for 10.33.3.39
Host is up (0.0080s latency).
MAC Address: 50:E0:85:52:3F:D2 (Intel Corporate)
Nmap scan report for 10.33.3.40
Host is up (0.080s latency).
MAC Address: 38:F9:D3:CF:50:86 (Apple)
Nmap scan report for 10.33.3.44
Host is up (0.037s latency).
MAC Address: DC:0B:34:A7:B4:FE (LG Electronics (Mobile Communications))
Nmap scan report for 10.33.3.46
Host is up (0.023s latency).
MAC Address: 20:79:18:8E:F3:0A (Intel Corporate)
Nmap scan report for 10.33.3.48
Host is up (0.010s latency).
MAC Address: A0:88:69:70:A5:49 (Intel Corporate)
Nmap scan report for 10.33.3.50
Host is up (0.074s latency).
MAC Address: 20:16:B9:42:E7:03 (Intel Corporate)
Nmap scan report for 10.33.3.51
Host is up (0.0060s latency).
MAC Address: F8:34:41:F8:18:2B (Intel Corporate)
Nmap scan report for 10.33.3.53
Host is up (0.011s latency).
MAC Address: B8:B2:F8:E4:AF:BD (Apple)
Nmap scan report for 10.33.3.55
Host is up (0.20s latency).
MAC Address: 30:07:4D:CF:5B:3E (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.3.59
Host is up (0.063s latency).
MAC Address: 9C:B6:D0:9B:EF:C1 (Rivet Networks)
Nmap scan report for 10.33.3.68
Host is up (0.055s latency).
MAC Address: C0:F4:E6:E9:81:02 (Huawei Technologies)
Nmap scan report for 10.33.3.70
Host is up (0.0080s latency).
MAC Address: 14:4F:8A:10:9E:6A (Intel Corporate)
Nmap scan report for 10.33.3.71
Host is up (0.0060s latency).
MAC Address: 94:B8:6D:70:9C:75 (Intel Corporate)
Nmap scan report for 10.33.3.73
Host is up (0.10s latency).
MAC Address: 14:4F:8A:C6:7C:D5 (Intel Corporate)
Nmap scan report for 10.33.3.75
Host is up (0.014s latency).
MAC Address: 88:E9:FE:85:78:A5 (Apple)
Nmap scan report for 10.33.3.78
Host is up (0.054s latency).
MAC Address: 8A:9A:A8:AA:F8:52 (Unknown)
Nmap scan report for 10.33.3.81
Host is up (0.11s latency).
MAC Address: E0:5F:45:B3:EE:89 (Apple)
Nmap scan report for 10.33.3.84
Host is up (0.31s latency).
MAC Address: 48:3B:38:29:2B:C2 (Apple)
Nmap scan report for 10.33.3.85
Host is up (0.38s latency).
MAC Address: 8C:86:1E:D2:F7:D8 (Apple)
Nmap scan report for 10.33.3.97
Host is up (0.0080s latency).
MAC Address: 74:70:FD:C5:07:BF (Intel Corporate)
Nmap scan report for 10.33.3.102
Host is up (0.022s latency).
MAC Address: BC:E1:43:35:0B:6B (Apple)
Nmap scan report for 10.33.3.106
Host is up (0.21s latency).
MAC Address: 44:D7:91:83:D1:CA (Unknown)
Nmap scan report for 10.33.3.108
Host is up (0.0060s latency).
MAC Address: D4:6D:6D:C8:46:0F (Intel Corporate)
Nmap scan report for 10.33.3.110
Host is up (0.0070s latency).
MAC Address: 44:03:2C:AD:69:0C (Intel Corporate)
Nmap scan report for 10.33.3.111
Host is up (0.0090s latency).
MAC Address: 98:2C:BC:C8:C8:DC (Unknown)
Nmap scan report for 10.33.3.116
Host is up (0.21s latency).
MAC Address: C0:B5:D7:92:4C:9F (Chongqing Fugui Electronics)
Nmap scan report for 10.33.3.117
Host is up (0.11s latency).
MAC Address: DC:FB:48:38:C2:0A (Intel Corporate)
Nmap scan report for 10.33.3.118
Host is up (0.19s latency).
MAC Address: 8C:25:05:DB:4A:2D (Huawei Technologies)
Nmap scan report for 10.33.3.121
Host is up (0.19s latency).
MAC Address: 40:9C:28:30:25:1E (Apple)
Nmap scan report for 10.33.3.123
Host is up (0.079s latency).
MAC Address: 14:4F:8A:22:6C:C1 (Intel Corporate)
Nmap scan report for 10.33.3.126
Host is up (0.0080s latency).
MAC Address: AC:D5:64:1C:A9:D9 (Chongqing Fugui Electronics)
Nmap scan report for 10.33.3.130
Host is up (0.0070s latency).
MAC Address: 14:4F:8A:C6:7D:0C (Intel Corporate)
Nmap scan report for 10.33.3.132
Host is up (0.0060s latency).
MAC Address: A4:83:E7:74:72:B9 (Apple)
Nmap scan report for 10.33.3.134
Host is up (0.012s latency).
MAC Address: 90:32:4B:A5:0E:61 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.3.136
Host is up (1.0s latency).
MAC Address: 34:A8:EB:B9:50:A4 (Apple)
Nmap scan report for 10.33.3.138
Host is up (0.69s latency).
MAC Address: 80:A5:89:3C:21:BD (AzureWave Technology)
Nmap scan report for 10.33.3.149
Host is up (0.055s latency).
MAC Address: DC:D9:16:32:0E:31 (Huawei Technologies)
Nmap scan report for 10.33.3.150
Host is up (0.20s latency).
MAC Address: C0:EE:FB:79:02:A4 (OnePlus Tech (Shenzhen))
Nmap scan report for 10.33.3.151
Host is up (0.096s latency).
MAC Address: 38:F9:D3:2F:EB:DE (Apple)
Nmap scan report for 10.33.3.152
Host is up (0.0040s latency).
MAC Address: 48:A4:72:7E:E6:59 (Intel Corporate)
Nmap scan report for 10.33.3.154
Host is up (0.031s latency).
MAC Address: F4:0F:24:23:C6:27 (Apple)
Nmap scan report for 10.33.3.155
Host is up (0.0060s latency).
MAC Address: 28:3F:69:C3:18:DE (Sony Mobile Communications)
Nmap scan report for 10.33.3.157
Host is up (0.010s latency).
MAC Address: BC:A8:A6:FE:A2:18 (Intel Corporate)
Nmap scan report for 10.33.3.161
Host is up (0.031s latency).
MAC Address: 18:F1:D8:A8:7F:AC (Apple)
Nmap scan report for 10.33.3.163
Host is up (0.0050s latency).
MAC Address: D8:F2:CA:0E:D5:8A (Intel Corporate)
Nmap scan report for 10.33.3.164
Host is up (0.011s latency).
MAC Address: F8:28:19:A1:2A:03 (Liteon Technology)
Nmap scan report for 10.33.3.165
Host is up (0.048s latency).
MAC Address: C8:21:58:1F:67:FB (Intel Corporate)
Nmap scan report for 10.33.3.166
Host is up (0.99s latency).
MAC Address: 14:87:6A:6E:12:5F (Unknown)
Nmap scan report for 10.33.3.170
Host is up (0.030s latency).
MAC Address: BC:3D:85:DD:85:18 (Huawei Technologies)
Nmap scan report for 10.33.3.171
Host is up (0.048s latency).
MAC Address: C0:E4:34:1B:6B:81 (Unknown)
Nmap scan report for 10.33.3.172
Host is up (0.10s latency).
MAC Address: 40:23:43:30:84:99 (Chongqing Fugui Electronics)
Nmap scan report for 10.33.3.173
Host is up (0.092s latency).
MAC Address: 98:2C:BC:F8:58:E5 (Unknown)
Nmap scan report for 10.33.3.174
Host is up (0.048s latency).
MAC Address: D0:57:7B:A5:BB:76 (Intel Corporate)
Nmap scan report for 10.33.3.178
Host is up (0.0080s latency).
MAC Address: C0:B6:F9:A9:FB:AA (Intel Corporate)
Nmap scan report for 10.33.3.181
Host is up (0.0050s latency).
MAC Address: F8:94:C2:2A:BF:CF (Intel Corporate)
Nmap scan report for 10.33.3.187
Host is up (0.18s latency).
MAC Address: 28:CF:E9:1D:11:A9 (Apple)
Nmap scan report for 10.33.3.192
Host is up (0.031s latency).
MAC Address: F4:8C:50:8D:60:AD (Intel Corporate)
Nmap scan report for 10.33.3.196
Host is up (0.39s latency).
MAC Address: 48:4B:AA:3D:28:25 (Apple)
Nmap scan report for 10.33.3.198
Host is up (0.0050s latency).
MAC Address: 80:91:33:1E:04:EB (AzureWave Technology)
Nmap scan report for 10.33.3.200
Host is up (0.011s latency).
MAC Address: 64:5D:86:CA:11:F6 (Intel Corporate)
Nmap scan report for 10.33.3.202
Host is up (0.042s latency).
MAC Address: 44:18:FD:F1:79:0E (Apple)
Nmap scan report for 10.33.3.203
Host is up (0.081s latency).
MAC Address: A4:D9:31:68:BC:2B (Apple)
Nmap scan report for 10.33.3.204
Host is up (0.73s latency).
MAC Address: 74:B5:87:8D:D8:92 (Apple)
Nmap scan report for 10.33.3.206
Host is up (0.0050s latency).
MAC Address: E4:70:B8:28:3A:20 (Intel Corporate)
Nmap scan report for 10.33.3.208
Host is up (0.0040s latency).
MAC Address: 8C:B8:4A:C8:E6:0E (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.3.209
Host is up (0.65s latency).
MAC Address: A8:5C:2C:19:28:8A (Apple)
Nmap scan report for 10.33.3.211
Host is up (0.15s latency).
MAC Address: 64:70:33:23:16:60 (Apple)
Nmap scan report for 10.33.3.212
Host is up (0.042s latency).
MAC Address: F4:60:E2:BB:FA:14 (Xiaomi Communications)
Nmap scan report for 10.33.3.214
Host is up (0.061s latency).
MAC Address: 88:11:96:B0:67:A6 (Huawei Technologies)
Nmap scan report for 10.33.3.216
Host is up (0.0070s latency).
MAC Address: 74:E5:F9:33:A0:A9 (Intel Corporate)
Nmap scan report for 10.33.3.219
Host is up (0.0050s latency).
MAC Address: 38:F9:D3:8D:69:4B (Apple)
Nmap scan report for 10.33.3.221
Host is up (0.013s latency).
MAC Address: A0:D3:7A:E8:EB:F3 (Intel Corporate)
Nmap scan report for 10.33.3.224
Host is up (0.011s latency).
MAC Address: 24:0A:64:1E:EE:2F (AzureWave Technology)
Nmap scan report for 10.33.3.225
Host is up (0.54s latency).
MAC Address: 08:C5:E1:F1:8E:13 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.3.226
Host is up (0.010s latency).
MAC Address: 34:F3:9A:74:6F:6C (Intel Corporate)
Nmap scan report for 10.33.3.236
Host is up (0.037s latency).
MAC Address: A0:CC:2B:1C:A1:3C (Murata Manufacturing)
Nmap scan report for 10.33.3.237
Host is up (0.12s latency).
MAC Address: 9C:5C:F9:3B:70:AB (Sony Mobile Communications)
Nmap scan report for 10.33.3.238
Host is up (0.0040s latency).
MAC Address: 7C:B0:C2:B4:31:4C (Intel Corporate)
Nmap scan report for 10.33.3.239
Host is up (0.82s latency).
MAC Address: B0:48:1A:D8:CA:31 (Apple)
Nmap scan report for 10.33.3.240
Host is up (0.45s latency).
MAC Address: 00:B3:62:81:39:E4 (Apple)
Nmap scan report for 10.33.3.241
Host is up (0.0090s latency).
MAC Address: D8:F2:CA:97:47:76 (Intel Corporate)
Nmap scan report for 10.33.3.242
Host is up (0.13s latency).
MAC Address: 18:01:F1:80:C8:50 (Xiaomi Communications)
Nmap scan report for 10.33.3.246
Host is up (0.19s latency).
MAC Address: 1C:CC:D6:8F:D6:13 (Unknown)
Nmap scan report for 10.33.3.248
Host is up (0.66s latency).
MAC Address: 80:0C:67:4F:FF:10 (Unknown)
Nmap scan report for 10.33.3.253
Host is up (0.0050s latency).
MAC Address: 00:12:00:40:4C:BF (Cisco Systems)
Nmap scan report for 10.33.3.254
Host is up (0.0040s latency).
MAC Address: 94:0C:6D:84:50:C8 (Tp-link Technologies)
Nmap scan report for 10.33.1.84
Host is up.
Nmap done: 1024 IP addresses (368 hosts up) scanned in 55.22 seconds

C:\Users\bapti>nmap -sn -PE 10.33.0.0/22
Starting Nmap 7.80 ( https://nmap.org ) at 2020-01-23 09:55 Paris, Madrid
Nmap scan report for 10.33.0.10
Host is up (0.023s latency).
MAC Address: AC:ED:5C:72:CD:BF (Intel Corporate)
Nmap scan report for 10.33.0.13
Host is up (0.014s latency).
MAC Address: C0:B6:F9:14:8B:0B (Intel Corporate)
Nmap scan report for 10.33.0.14
Host is up (0.012s latency).
MAC Address: 28:16:AD:AE:2A:2C (Intel Corporate)
Nmap scan report for 10.33.0.15
Host is up (0.052s latency).
MAC Address: B8:8A:60:87:9D:E4 (Intel Corporate)
Nmap scan report for 10.33.0.16
Host is up (0.74s latency).
MAC Address: 74:EB:80:E6:EB:AA (Samsung Electronics)
Nmap scan report for 10.33.0.17
Host is up (0.0060s latency).
MAC Address: 7C:76:35:E5:3F:53 (Intel Corporate)
Nmap scan report for 10.33.0.21
Host is up (0.10s latency).
MAC Address: 28:16:AD:24:CC:28 (Intel Corporate)
Nmap scan report for 10.33.0.22
Host is up (0.010s latency).
MAC Address: 50:E0:85:B9:CF:80 (Intel Corporate)
Nmap scan report for 10.33.0.24
Host is up (0.032s latency).
MAC Address: 30:24:32:9E:73:20 (Intel Corporate)
Nmap scan report for 10.33.0.30
Host is up (0.0050s latency).
MAC Address: 64:5D:86:4E:69:6B (Intel Corporate)
Nmap scan report for 10.33.0.35
Host is up (0.0030s latency).
MAC Address: 78:4F:43:51:56:D3 (Apple)
Nmap scan report for 10.33.0.37
Host is up (0.086s latency).
MAC Address: 60:AB:67:DC:5E:D3 (Xiaomi Communications)
Nmap scan report for 10.33.0.48
Host is up (0.018s latency).
MAC Address: 78:4F:43:00:A7:13 (Apple)
Nmap scan report for 10.33.0.49
Host is up (0.025s latency).
MAC Address: 00:CD:FE:C5:9B:58 (Apple)
Nmap scan report for 10.33.0.50
Host is up (0.11s latency).
MAC Address: E4:B3:18:48:36:68 (Intel Corporate)
Nmap scan report for 10.33.0.51
Host is up (0.056s latency).
MAC Address: 50:BC:96:68:CC:93 (Apple)
Nmap scan report for 10.33.0.52
Host is up (0.026s latency).
MAC Address: 30:10:B3:69:9B:B2 (Liteon Technology)
Nmap scan report for 10.33.0.54
Host is up (0.13s latency).
MAC Address: AC:BC:32:90:C5:35 (Apple)
Nmap scan report for 10.33.0.55
Host is up (0.28s latency).
MAC Address: 00:5A:13:2F:CC:24 (Huawei Technologies)
Nmap scan report for 10.33.0.56
Host is up (0.10s latency).
MAC Address: DC:72:9B:98:38:7E (Huawei Technologies)
Nmap scan report for 10.33.0.57
Host is up (0.017s latency).
MAC Address: C8:FF:28:29:7A:D7 (Liteon Technology)
Nmap scan report for 10.33.0.60
Host is up (0.0090s latency).
MAC Address: 14:4F:8A:12:88:E2 (Intel Corporate)
Nmap scan report for 10.33.0.62
Host is up (0.10s latency).
MAC Address: 88:66:A5:99:7F:B4 (Apple)
Nmap scan report for 10.33.0.63
Host is up (0.098s latency).
MAC Address: FC:18:3C:A0:0B:C7 (Apple)
Nmap scan report for 10.33.0.65
Host is up (0.0030s latency).
MAC Address: C0:EE:FB:C3:F6:0E (OnePlus Tech (Shenzhen))
Nmap scan report for 10.33.0.68
Host is up (0.016s latency).
MAC Address: 9C:B6:D0:18:94:4F (Rivet Networks)
Nmap scan report for 10.33.0.70
Host is up (0.049s latency).
MAC Address: D0:2B:20:F0:C2:CA (Apple)
Nmap scan report for 10.33.0.71
Host is up (0.20s latency).
MAC Address: F4:60:E2:E2:3E:00 (Xiaomi Communications)
Nmap scan report for 10.33.0.73
Host is up (0.31s latency).
MAC Address: 6C:8D:C1:04:8B:C7 (Apple)
Nmap scan report for 10.33.0.75
Host is up (0.046s latency).
MAC Address: B4:CB:57:12:30:1B (Guangdong Oppo Mobile Telecommunications)
Nmap scan report for 10.33.0.80
Host is up (0.026s latency).
MAC Address: 44:03:2C:EC:B1:75 (Intel Corporate)
Nmap scan report for 10.33.0.81
Host is up (0.0080s latency).
MAC Address: 9E:B6:C4:14:79:C7 (Unknown)
Nmap scan report for 10.33.0.83
Host is up (0.0040s latency).
MAC Address: 9C:B6:D0:09:AB:6F (Rivet Networks)
Nmap scan report for 10.33.0.88
Host is up (0.0040s latency).
MAC Address: 9C:E3:3F:95:57:49 (Apple)
Nmap scan report for 10.33.0.93
Host is up (0.0040s latency).
MAC Address: 94:B8:6D:6F:C2:CD (Intel Corporate)
Nmap scan report for 10.33.0.94
Host is up (0.038s latency).
MAC Address: 10:02:B5:57:03:50 (Intel Corporate)
Nmap scan report for 10.33.0.96
Host is up (0.0030s latency).
MAC Address: 48:F1:7F:28:E0:83 (Intel Corporate)
Nmap scan report for 10.33.0.97
Host is up (0.084s latency).
MAC Address: 70:3C:69:69:9A:FE (Apple)
Nmap scan report for 10.33.0.98
Host is up (0.024s latency).
MAC Address: 6C:4D:73:91:72:75 (Apple)
Nmap scan report for 10.33.0.99
Host is up (0.25s latency).
MAC Address: 30:07:4D:93:79:34 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.0.103
Host is up (0.36s latency).
MAC Address: A4:E9:75:BC:0E:97 (Apple)
Nmap scan report for 10.33.0.105
Host is up (0.015s latency).
MAC Address: 88:E9:FE:75:39:D6 (Apple)
Nmap scan report for 10.33.0.107
Host is up (0.13s latency).
MAC Address: 1C:B7:96:EA:A9:A5 (Huawei Technologies)
Nmap scan report for 10.33.0.108
Host is up (0.088s latency).
MAC Address: 20:47:DA:65:0C:3D (Xiaomi Communications)
Nmap scan report for 10.33.0.115
Host is up (0.010s latency).
MAC Address: F8:DA:0C:01:40:1D (Hon Hai Precision Ind.)
Nmap scan report for 10.33.0.118
Host is up (0.014s latency).
MAC Address: B0:FC:36:B6:2E:97 (CyberTAN Technology)
Nmap scan report for 10.33.0.119
Host is up (0.045s latency).
MAC Address: 58:20:59:00:08:60 (Xiaomi Communications)
Nmap scan report for 10.33.0.128
Host is up (0.26s latency).
MAC Address: 40:9C:28:2C:CF:E0 (Apple)
Nmap scan report for 10.33.0.134
Host is up (0.048s latency).
MAC Address: 94:65:2D:85:2B:0C (OnePlus Technology (Shenzhen))
Nmap scan report for 10.33.0.135
Host is up (0.082s latency).
MAC Address: AC:BC:32:CC:C5:45 (Apple)
Nmap scan report for 10.33.0.137
Host is up (0.10s latency).
MAC Address: 50:E0:85:F5:0B:45 (Intel Corporate)
Nmap scan report for 10.33.0.141
Host is up (0.072s latency).
MAC Address: 58:20:59:08:F8:EB (Xiaomi Communications)
Nmap scan report for 10.33.0.148
Host is up (0.15s latency).
MAC Address: B0:55:08:C0:E1:E6 (Huawei Technologies)
Nmap scan report for 10.33.0.150
Host is up (0.047s latency).
MAC Address: DC:F5:05:D2:9A:67 (AzureWave Technology)
Nmap scan report for 10.33.0.152
Host is up (0.0060s latency).
MAC Address: FA:AB:81:3E:96:55 (Unknown)
Nmap scan report for 10.33.0.154
Host is up (0.0050s latency).
MAC Address: 0C:96:E6:88:63:D5 (Cloud Network Technology (Samoa) Limited)
Nmap scan report for 10.33.0.157
Host is up (0.013s latency).
MAC Address: 38:00:25:8A:38:7E (Intel Corporate)
Nmap scan report for 10.33.0.160
Host is up (0.97s latency).
MAC Address: F8:87:F1:C8:C4:45 (Apple)
Nmap scan report for 10.33.0.162
Host is up (1.6s latency).
MAC Address: DC:08:0F:3D:CB:D8 (Apple)
Nmap scan report for 10.33.0.163
Host is up (0.0030s latency).
MAC Address: D4:3B:04:B7:B7:AE (Intel Corporate)
Nmap scan report for 10.33.0.166
Host is up (0.028s latency).
MAC Address: 80:91:33:C9:37:83 (AzureWave Technology)
Nmap scan report for 10.33.0.169
Host is up (0.021s latency).
MAC Address: A4:83:E7:CC:F9:68 (Apple)
Nmap scan report for 10.33.0.170
Host is up (0.091s latency).
MAC Address: 0C:96:E6:3C:3B:6B (Cloud Network Technology (Samoa) Limited)
Nmap scan report for 10.33.0.171
Host is up (0.0060s latency).
MAC Address: 80:91:33:1E:03:7B (AzureWave Technology)
Nmap scan report for 10.33.0.172
Host is up (0.020s latency).
MAC Address: 98:01:A7:F1:8B:63 (Apple)
Nmap scan report for 10.33.0.174
Host is up (0.41s latency).
MAC Address: A4:E9:75:DB:04:84 (Apple)
Nmap scan report for 10.33.0.176
Host is up (0.0040s latency).
MAC Address: A0:88:69:DF:10:06 (Intel Corporate)
Nmap scan report for 10.33.0.179
Host is up (0.0030s latency).
MAC Address: C0:B6:F9:14:16:7B (Intel Corporate)
Nmap scan report for 10.33.0.180
Host is up (0.061s latency).
MAC Address: 00:CD:FE:C7:77:E1 (Apple)
Nmap scan report for 10.33.0.191
Host is up (0.36s latency).
MAC Address: B4:8B:19:2F:BF:0B (Apple)
Nmap scan report for 10.33.0.193
Host is up (0.0030s latency).
MAC Address: A0:51:0B:6C:B9:20 (Intel Corporate)
Nmap scan report for 10.33.0.195
Host is up (0.0090s latency).
MAC Address: C0:EE:FB:DD:78:C3 (OnePlus Tech (Shenzhen))
Nmap scan report for 10.33.0.198
Host is up (0.0060s latency).
MAC Address: 0C:54:15:C3:F0:0F (Intel Corporate)
Nmap scan report for 10.33.0.205
Host is up (0.19s latency).
MAC Address: F0:98:9D:D7:35:03 (Apple)
Nmap scan report for 10.33.0.206
Host is up (0.0050s latency).
MAC Address: D0:C6:37:3C:59:A1 (Unknown)
Nmap scan report for 10.33.0.209
Host is up (0.32s latency).
MAC Address: B0:89:00:A6:C5:1A (Huawei Technologies)
Nmap scan report for 10.33.0.211
Host is up (0.11s latency).
MAC Address: 80:D6:05:2E:86:73 (Apple)
Nmap scan report for 10.33.0.214
Host is up (0.085s latency).
MAC Address: C0:B5:D7:C2:BE:1F (Chongqing Fugui Electronics)
Nmap scan report for 10.33.0.215
Host is up (0.29s latency).
MAC Address: 06:99:0B:8F:95:A5 (Unknown)
Nmap scan report for 10.33.0.218
Host is up (0.0070s latency).
MAC Address: D4:25:8B:82:1B:6C (Intel Corporate)
Nmap scan report for 10.33.0.224
Host is up (0.013s latency).
MAC Address: F8:28:19:A0:CB:D1 (Liteon Technology)
Nmap scan report for 10.33.0.225
Host is up (0.085s latency).
MAC Address: 74:B5:87:57:A7:D4 (Apple)
Nmap scan report for 10.33.0.227
Host is up (0.37s latency).
MAC Address: 44:18:FD:33:DA:C1 (Apple)
Nmap scan report for 10.33.0.228
Host is up (0.27s latency).
MAC Address: 60:A3:7D:AD:16:A1 (Apple)
Nmap scan report for 10.33.0.229
Host is up (0.021s latency).
MAC Address: 4C:D1:A1:29:1C:F6 (Huawei Technologies)
Nmap scan report for 10.33.0.234
Host is up (0.15s latency).
MAC Address: 10:94:BB:3B:2D:4D (Apple)
Nmap scan report for 10.33.0.239
Host is up (0.020s latency).
MAC Address: F0:18:98:05:BE:4D (Apple)
Nmap scan report for 10.33.0.242
Host is up (0.14s latency).
MAC Address: 38:CA:DA:F0:86:BE (Apple)
Nmap scan report for 10.33.0.251
Host is up (0.0050s latency).
MAC Address: C0:B5:D7:47:CE:E1 (Chongqing Fugui Electronics)
Nmap scan report for 10.33.0.252
Host is up (0.064s latency).
MAC Address: A4:83:E7:6B:BC:CE (Apple)
Nmap scan report for 10.33.0.253
Host is up (0.084s latency).
MAC Address: A0:A4:C5:6E:9F:24 (Intel Corporate)
Nmap scan report for 10.33.0.255
Host is up (0.0050s latency).
MAC Address: 68:07:15:12:9E:68 (Intel Corporate)
Nmap scan report for 10.33.1.1
Host is up (0.065s latency).
MAC Address: 30:24:32:CA:8D:9D (Intel Corporate)
Nmap scan report for 10.33.1.9
Host is up (0.0050s latency).
MAC Address: DC:F5:05:AB:6E:59 (AzureWave Technology)
Nmap scan report for 10.33.1.12
Host is up (0.18s latency).
MAC Address: BC:3D:85:A1:33:3E (Huawei Technologies)
Nmap scan report for 10.33.1.13
Host is up (0.082s latency).
MAC Address: 98:01:A7:D1:6C:29 (Apple)
Nmap scan report for 10.33.1.14
Host is up (0.011s latency).
MAC Address: 08:D4:0C:7E:FC:3E (Intel Corporate)
Nmap scan report for 10.33.1.24
Host is up (0.11s latency).
MAC Address: 38:F9:D3:E8:DA:3E (Apple)
Nmap scan report for 10.33.1.27
Host is up (0.0040s latency).
MAC Address: 7C:2A:31:0D:6F:60 (Intel Corporate)
Nmap scan report for 10.33.1.33
Host is up (0.0090s latency).
MAC Address: 3C:77:E6:0F:E7:39 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.38
Host is up (0.32s latency).
MAC Address: A4:5E:60:0D:EE:71 (Apple)
Nmap scan report for 10.33.1.39
Host is up (0.097s latency).
MAC Address: 88:83:22:BD:33:D2 (Samsung Electronics)
Nmap scan report for 10.33.1.43
Host is up (0.11s latency).
MAC Address: 38:F9:D3:2D:F1:80 (Apple)
Nmap scan report for 10.33.1.45
Host is up (0.096s latency).
MAC Address: 94:65:2D:40:58:81 (OnePlus Technology (Shenzhen))
Nmap scan report for 10.33.1.50
Host is up (0.0080s latency).
MAC Address: 80:D6:05:28:EF:DA (Apple)
Nmap scan report for 10.33.1.52
Host is up (0.0030s latency).
MAC Address: 30:24:32:B7:31:8F (Intel Corporate)
Nmap scan report for 10.33.1.53
Host is up (0.0020s latency).
MAC Address: 48:45:20:5C:76:C3 (Intel Corporate)
Nmap scan report for 10.33.1.54
Host is up (0.28s latency).
MAC Address: 7C:01:91:86:93:63 (Apple)
Nmap scan report for 10.33.1.56
Host is up (0.0050s latency).
MAC Address: AC:ED:5C:AF:72:9C (Intel Corporate)
Nmap scan report for 10.33.1.60
Host is up (0.0050s latency).
MAC Address: AC:BC:32:CA:CF:4B (Apple)
Nmap scan report for 10.33.1.62
Host is up (0.92s latency).
MAC Address: B0:70:2D:B8:9F:24 (Apple)
Nmap scan report for 10.33.1.66
Host is up (0.047s latency).
MAC Address: A0:99:9B:1C:74:A7 (Apple)
Nmap scan report for 10.33.1.68
Host is up (0.0080s latency).
MAC Address: 50:E0:85:53:92:B0 (Intel Corporate)
Nmap scan report for 10.33.1.71
Host is up (0.0080s latency).
MAC Address: A0:51:0B:6D:11:22 (Intel Corporate)
Nmap scan report for 10.33.1.72
Host is up (0.091s latency).
MAC Address: 7C:B2:7D:3B:C4:69 (Intel Corporate)
Nmap scan report for 10.33.1.73
Host is up (0.0030s latency).
MAC Address: 74:DF:BF:2D:07:7E (Liteon Technology)
Nmap scan report for 10.33.1.79
Host is up (0.034s latency).
MAC Address: 74:E5:F9:F3:20:E6 (Intel Corporate)
Nmap scan report for 10.33.1.81
Host is up (0.0030s latency).
MAC Address: 98:3B:8F:DE:BF:39 (Intel Corporate)
Nmap scan report for 10.33.1.82
Host is up (0.12s latency).
MAC Address: 58:B1:0F:80:AC:68 (Samsung Electronics)
Nmap scan report for 10.33.1.83
Host is up (0.18s latency).
MAC Address: 34:79:16:1F:25:B8 (Huawei Technologies)
Nmap scan report for 10.33.1.86
Host is up (0.0060s latency).
MAC Address: 9C:B6:D0:60:F6:BB (Rivet Networks)
Nmap scan report for 10.33.1.87
Host is up (0.0040s latency).
MAC Address: 70:C9:4E:69:69:DD (Liteon Technology)
Nmap scan report for 10.33.1.90
Host is up (0.080s latency).
MAC Address: 94:B8:6D:91:49:CF (Intel Corporate)
Nmap scan report for 10.33.1.92
Host is up (0.055s latency).
MAC Address: 38:F9:D3:BB:80:36 (Apple)
Nmap scan report for 10.33.1.96
Host is up (0.0060s latency).
MAC Address: 5C:E0:C5:85:EC:88 (Intel Corporate)
Nmap scan report for 10.33.1.97
Host is up (0.084s latency).
MAC Address: 48:2C:A0:97:2F:6E (Xiaomi Communications)
Nmap scan report for 10.33.1.99
Host is up (0.0040s latency).
MAC Address: 08:71:90:8A:BE:3E (Intel Corporate)
Nmap scan report for 10.33.1.100
Host is up (0.012s latency).
MAC Address: 9C:30:5B:AC:FF:F7 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.106
Host is up (1.6s latency).
MAC Address: 90:60:F1:65:14:79 (Apple)
Nmap scan report for 10.33.1.108
Host is up (0.066s latency).
MAC Address: 98:CA:33:BC:C3:71 (Apple)
Nmap scan report for 10.33.1.112
Host is up (0.055s latency).
MAC Address: E0:E6:2E:37:2A:3A (TCT mobile)
Nmap scan report for 10.33.1.114
Host is up (0.0080s latency).
MAC Address: 88:B1:11:B9:41:F0 (Intel Corporate)
Nmap scan report for 10.33.1.116
Host is up (0.050s latency).
MAC Address: 38:53:9C:C3:C1:27 (Apple)
Nmap scan report for 10.33.1.118
Host is up (0.057s latency).
MAC Address: F0:18:98:30:AE:A8 (Apple)
Nmap scan report for 10.33.1.122
Host is up (0.0030s latency).
MAC Address: 90:78:41:61:D0:46 (Intel Corporate)
Nmap scan report for 10.33.1.128
Host is up (0.063s latency).
MAC Address: C0:BD:C8:40:96:27 (Samsung Electronics)
Nmap scan report for 10.33.1.129
Host is up (0.16s latency).
MAC Address: E4:34:93:5A:1C:5C (Huawei Technologies)
Nmap scan report for 10.33.1.132
Host is up (0.0080s latency).
MAC Address: 30:24:32:DF:27:9E (Intel Corporate)
Nmap scan report for 10.33.1.134
Host is up (0.0050s latency).
MAC Address: 9C:B6:D0:02:9D:53 (Rivet Networks)
Nmap scan report for 10.33.1.135
Host is up (0.0060s latency).
MAC Address: A8:6D:AA:54:07:B3 (Intel Corporate)
Nmap scan report for 10.33.1.136
Host is up (0.81s latency).
MAC Address: 08:C5:E1:2D:58:23 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.1.137
Host is up (0.094s latency).
MAC Address: F4:5C:89:C9:2A:5D (Apple)
Nmap scan report for 10.33.1.138
Host is up (0.0060s latency).
MAC Address: C8:3D:D4:7A:CD:FF (CyberTAN Technology)
Nmap scan report for 10.33.1.139
Host is up (0.11s latency).
MAC Address: 48:3C:0C:1C:5B:44 (Huawei Technologies)
Nmap scan report for 10.33.1.142
Host is up (0.12s latency).
MAC Address: D8:0B:9A:15:3E:B0 (Unknown)
Nmap scan report for 10.33.1.146
Host is up (0.11s latency).
MAC Address: EC:2C:E2:AD:BA:DC (Apple)
Nmap scan report for 10.33.1.151
Host is up (0.082s latency).
MAC Address: E8:FB:E9:78:8F:28 (Unknown)
Nmap scan report for 10.33.1.155
Host is up (0.0090s latency).
MAC Address: DC:F5:05:5B:50:87 (AzureWave Technology)
Nmap scan report for 10.33.1.156
Host is up (0.0030s latency).
MAC Address: D0:C6:37:00:33:09 (Unknown)
Nmap scan report for 10.33.1.162
Host is up (0.49s latency).
MAC Address: 50:3E:AA:2D:33:8A (Tp-link Technologies)
Nmap scan report for 10.33.1.167
Host is up (0.28s latency).
MAC Address: 40:9C:28:93:97:72 (Apple)
Nmap scan report for 10.33.1.171
Host is up (0.0060s latency).
MAC Address: FC:77:74:60:58:5B (Intel Corporate)
Nmap scan report for 10.33.1.175
Host is up (0.16s latency).
MAC Address: 58:CB:52:8E:5B:1F (Google)
Nmap scan report for 10.33.1.177
Host is up (0.0040s latency).
MAC Address: 74:70:FD:E5:89:C2 (Intel Corporate)
Nmap scan report for 10.33.1.179
Host is up (0.010s latency).
MAC Address: B0:10:41:F8:A5:43 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.185
Host is up (0.0050s latency).
MAC Address: D4:D2:52:85:23:16 (Intel Corporate)
Nmap scan report for 10.33.1.189
Host is up (0.0030s latency).
MAC Address: 74:E5:F9:D7:9E:D4 (Intel Corporate)
Nmap scan report for 10.33.1.194
Host is up (0.039s latency).
MAC Address: 28:16:A8:62:87:7D (Microsoft)
Nmap scan report for 10.33.1.195
Host is up (0.076s latency).
MAC Address: 90:78:41:AA:C2:29 (Intel Corporate)
Nmap scan report for 10.33.1.196
Host is up (0.057s latency).
MAC Address: 34:29:12:E7:18:DF (Huawei Technologies)
Nmap scan report for 10.33.1.197
Host is up (0.0050s latency).
MAC Address: 48:4B:AA:E3:1B:93 (Apple)
Nmap scan report for 10.33.1.201
Host is up (4.2s latency).
MAC Address: 4C:DD:31:BE:3A:0B (Samsung Electronics)
Nmap scan report for 10.33.1.213
Host is up (0.0060s latency).
MAC Address: 3C:95:09:50:9C:33 (Liteon Technology)
Nmap scan report for 10.33.1.217
Host is up (0.030s latency).
MAC Address: 64:5D:86:C1:1B:73 (Intel Corporate)
Nmap scan report for 10.33.1.218
Host is up (0.26s latency).
MAC Address: A0:56:F3:38:4B:D5 (Apple)
Nmap scan report for 10.33.1.219
Host is up (0.18s latency).
MAC Address: D8:55:75:87:0D:BE (Samsung Electronics)
Nmap scan report for 10.33.1.220
Host is up (0.24s latency).
MAC Address: D4:61:2E:EF:E6:6D (Huawei Technologies)
Nmap scan report for 10.33.1.221
Host is up (0.020s latency).
MAC Address: 54:13:79:7C:7D:BF (Hon Hai Precision Ind.)
Nmap scan report for 10.33.1.222
Host is up (0.11s latency).
MAC Address: AC:1F:74:0A:5C:48 (Apple)
Nmap scan report for 10.33.1.223
Host is up (0.0080s latency).
MAC Address: 5C:E0:C5:26:78:89 (Intel Corporate)
Nmap scan report for 10.33.1.224
Host is up (0.068s latency).
MAC Address: 80:B0:3D:C2:5C:1B (Apple)
Nmap scan report for 10.33.1.225
Host is up (0.0070s latency).
MAC Address: D0:C5:D3:5F:8A:6F (AzureWave Technology)
Nmap scan report for 10.33.1.234
Host is up (0.0030s latency).
MAC Address: C0:B6:F9:CB:CB:E0 (Intel Corporate)
Nmap scan report for 10.33.1.235
Host is up (0.0030s latency).
MAC Address: AC:FD:CE:8F:D8:29 (Intel Corporate)
Nmap scan report for 10.33.1.236
Host is up (0.11s latency).
MAC Address: 90:78:41:D0:20:82 (Intel Corporate)
Nmap scan report for 10.33.1.238
Host is up (0.0060s latency).
MAC Address: 44:03:2C:47:04:4B (Intel Corporate)
Nmap scan report for 10.33.1.241
Host is up (0.030s latency).
MAC Address: F4:5C:89:BE:22:0D (Apple)
Nmap scan report for 10.33.1.244
Host is up (0.0040s latency).
MAC Address: A8:6D:AA:E8:65:43 (Intel Corporate)
Nmap scan report for 10.33.1.246
Host is up (1.9s latency).
MAC Address: F8:87:F1:30:FF:DE (Apple)
Nmap scan report for 10.33.1.249
Host is up (0.018s latency).
MAC Address: F0:18:98:4D:21:1A (Apple)
Nmap scan report for 10.33.2.3
Host is up (0.018s latency).
MAC Address: F4:96:34:EA:59:C5 (Intel Corporate)
Nmap scan report for 10.33.2.5
Host is up (0.0040s latency).
MAC Address: B4:69:21:BE:DD:1D (Intel Corporate)
Nmap scan report for 10.33.2.10
Host is up (0.0030s latency).
MAC Address: B4:6D:83:A5:AF:2D (Intel Corporate)
Nmap scan report for 10.33.2.13
Host is up (0.046s latency).
MAC Address: 88:E9:FE:68:52:C7 (Apple)
Nmap scan report for 10.33.2.15
Host is up (0.060s latency).
MAC Address: 40:9F:38:E4:8D:37 (AzureWave Technology)
Nmap scan report for 10.33.2.17
Host is up (1.1s latency).
MAC Address: 58:40:4E:7B:C5:20 (Apple)
Nmap scan report for 10.33.2.18
Host is up (0.081s latency).
MAC Address: F8:28:19:58:40:55 (Liteon Technology)
Nmap scan report for 10.33.2.21
Host is up (0.11s latency).
MAC Address: C0:E8:62:A0:63:EB (Apple)
Nmap scan report for 10.33.2.22
Host is up (0.046s latency).
MAC Address: DC:F5:05:14:34:8F (AzureWave Technology)
Nmap scan report for 10.33.2.23
Host is up (0.10s latency).
MAC Address: 8C:F5:A3:1D:A6:86 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.25
Host is up (0.015s latency).
MAC Address: 64:5D:86:5A:08:84 (Intel Corporate)
Nmap scan report for 10.33.2.31
Host is up (0.095s latency).
MAC Address: DC:8B:28:89:67:4B (Intel Corporate)
Nmap scan report for 10.33.2.32
Host is up (0.084s latency).
MAC Address: 98:01:A7:A3:08:89 (Apple)
Nmap scan report for 10.33.2.37
Host is up (0.0040s latency).
MAC Address: 94:B8:6D:47:04:0F (Intel Corporate)
Nmap scan report for 10.33.2.40
Host is up (0.011s latency).
MAC Address: D0:AB:D5:C7:1A:28 (Intel Corporate)
Nmap scan report for 10.33.2.51
Host is up (0.0030s latency).
MAC Address: 48:A4:72:6E:EA:A1 (Intel Corporate)
Nmap scan report for 10.33.2.60
Host is up (0.0090s latency).
MAC Address: 3C:6A:A7:38:CE:D0 (Intel Corporate)
Nmap scan report for 10.33.2.62
Host is up (0.095s latency).
MAC Address: 10:02:B5:A2:60:AC (Intel Corporate)
Nmap scan report for 10.33.2.69
Host is up (0.0090s latency).
MAC Address: 38:F9:D3:3C:01:7D (Apple)
Nmap scan report for 10.33.2.70
Host is up (0.049s latency).
MAC Address: 40:4D:7F:C4:EB:E5 (Apple)
Nmap scan report for 10.33.2.71
Host is up (0.028s latency).
MAC Address: E0:DC:FF:EE:02:21 (Xiaomi Communications)
Nmap scan report for 10.33.2.74
Host is up (0.082s latency).
MAC Address: D4:61:9D:30:A2:60 (Apple)
Nmap scan report for 10.33.2.75
Host is up (0.0040s latency).
MAC Address: 00:28:F8:05:9F:A1 (Intel Corporate)
Nmap scan report for 10.33.2.76
Host is up (0.096s latency).
MAC Address: D0:D2:B0:26:45:80 (Apple)
Nmap scan report for 10.33.2.81
Host is up (0.16s latency).
MAC Address: 34:08:BC:B2:B6:84 (Apple)
Nmap scan report for 10.33.2.83
Host is up (0.024s latency).
MAC Address: 38:00:25:AC:79:DE (Intel Corporate)
Nmap scan report for 10.33.2.100
Host is up (0.0050s latency).
MAC Address: 68:EC:C5:73:40:CE (Intel Corporate)
Nmap scan report for 10.33.2.104
Host is up (0.091s latency).
MAC Address: 00:DB:70:A5:22:E6 (Apple)
Nmap scan report for 10.33.2.106
Host is up (0.18s latency).
MAC Address: A4:93:3F:99:61:59 (Huawei Technologies)
Nmap scan report for 10.33.2.108
Host is up (0.036s latency).
MAC Address: D0:C6:37:81:9E:49 (Unknown)
Nmap scan report for 10.33.2.111
Host is up (0.077s latency).
MAC Address: A4:83:E7:56:DD:32 (Apple)
Nmap scan report for 10.33.2.114
Host is up (0.27s latency).
MAC Address: D8:CE:3A:91:77:3D (Xiaomi Communications)
Nmap scan report for 10.33.2.117
Host is up (0.13s latency).
MAC Address: 5C:C3:07:B5:9D:23 (Huawei Technologies)
Nmap scan report for 10.33.2.119
Host is up (0.074s latency).
MAC Address: 08:71:90:B0:FE:00 (Intel Corporate)
Nmap scan report for 10.33.2.120
Host is up (0.012s latency).
MAC Address: 94:53:30:8E:9D:C7 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.2.122
Host is up (0.024s latency).
MAC Address: 28:16:7F:65:6B:DC (Xiaomi Communications)
Nmap scan report for 10.33.2.123
Host is up (0.24s latency).
MAC Address: 90:F0:52:54:2B:4D (Meizu Technology)
Nmap scan report for 10.33.2.124
Host is up (0.11s latency).
MAC Address: 30:24:32:3D:37:95 (Intel Corporate)
Nmap scan report for 10.33.2.125
Host is up (0.18s latency).
MAC Address: 98:5F:D3:3C:5A:67 (Microsoft)
Nmap scan report for 10.33.2.126
Host is up (0.012s latency).
MAC Address: B4:69:21:F0:E3:26 (Intel Corporate)
Nmap scan report for 10.33.2.127
Host is up (0.063s latency).
MAC Address: 6C:C7:EC:36:8D:CB (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.128
Host is up (0.25s latency).
MAC Address: D4:38:9C:8A:7B:48 (Sony Mobile Communications)
Nmap scan report for 10.33.2.131
Host is up (0.041s latency).
MAC Address: 20:34:FB:A5:95:D9 (Xiaomi Communications)
Nmap scan report for 10.33.2.134
Host is up (0.032s latency).
MAC Address: CC:44:63:6E:0D:99 (Apple)
Nmap scan report for 10.33.2.137
Host is up (0.0040s latency).
MAC Address: 74:40:BB:0B:1E:91 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.2.139
Host is up (0.028s latency).
MAC Address: 08:C5:E1:DB:A0:F2 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.140
Host is up (0.083s latency).
MAC Address: DC:FB:48:1D:25:BD (Intel Corporate)
Nmap scan report for 10.33.2.141
Host is up (0.15s latency).
MAC Address: 70:4D:7B:AD:D8:05 (Asustek Computer)
Nmap scan report for 10.33.2.144
Host is up (0.057s latency).
MAC Address: A4:08:EA:B1:7D:ED (Murata Manufacturing)
Nmap scan report for 10.33.2.145
Host is up (0.0050s latency).
MAC Address: 30:24:32:4A:7D:AB (Intel Corporate)
Nmap scan report for 10.33.2.147
Host is up (0.0060s latency).
MAC Address: A4:02:B9:7C:25:EA (Intel Corporate)
Nmap scan report for 10.33.2.148
Host is up (0.044s latency).
MAC Address: 88:B1:11:5A:63:33 (Intel Corporate)
Nmap scan report for 10.33.2.152
Host is up (0.0070s latency).
MAC Address: 18:5E:0F:D8:ED:7F (Intel Corporate)
Nmap scan report for 10.33.2.154
Host is up (0.44s latency).
MAC Address: 08:C5:E1:1E:80:40 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.155
Host is up (0.13s latency).
MAC Address: A0:C9:A0:8F:69:D6 (Murata Manufacturing)
Nmap scan report for 10.33.2.156
Host is up (0.055s latency).
MAC Address: 9C:B6:D0:F1:32:37 (Rivet Networks)
Nmap scan report for 10.33.2.163
Host is up (0.0050s latency).
MAC Address: A4:5E:60:C1:58:B3 (Apple)
Nmap scan report for 10.33.2.166
Host is up (0.0050s latency).
MAC Address: 20:79:18:A8:EF:8F (Intel Corporate)
Nmap scan report for 10.33.2.170
Host is up (0.0050s latency).
MAC Address: F8:16:54:49:74:33 (Intel Corporate)
Nmap scan report for 10.33.2.171
Host is up (0.0030s latency).
MAC Address: A4:C3:F0:36:AA:E7 (Intel Corporate)
Nmap scan report for 10.33.2.174
Host is up (0.0060s latency).
MAC Address: 48:F1:7F:57:55:80 (Intel Corporate)
Nmap scan report for 10.33.2.177
Host is up (0.87s latency).
MAC Address: 4C:DD:31:CF:97:0C (Samsung Electronics)
Nmap scan report for 10.33.2.178
Host is up (0.011s latency).
MAC Address: 80:E6:50:14:60:2A (Apple)
Nmap scan report for 10.33.2.180
Host is up (0.11s latency).
MAC Address: 70:3C:69:D3:1D:67 (Apple)
Nmap scan report for 10.33.2.183
Host is up (0.11s latency).
MAC Address: 30:07:4D:D0:5F:40 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.2.186
Host is up (0.0040s latency).
MAC Address: D0:AB:D5:C5:4A:04 (Intel Corporate)
Nmap scan report for 10.33.2.194
Host is up (0.098s latency).
MAC Address: 38:F9:D3:81:EA:7D (Apple)
Nmap scan report for 10.33.2.200
Host is up (0.0030s latency).
MAC Address: BC:A8:A6:9D:90:77 (Intel Corporate)
Nmap scan report for 10.33.2.215
Host is up (0.13s latency).
MAC Address: F0:0F:EC:2F:A2:7D (Huawei Technologies)
Nmap scan report for 10.33.2.219
Host is up (0.30s latency).
MAC Address: C4:98:80:EF:C1:23 (Apple)
Nmap scan report for 10.33.2.221
Host is up (0.13s latency).
MAC Address: A8:9C:ED:A1:E9:E8 (Xiaomi Communications)
Nmap scan report for 10.33.2.222
Host is up (0.29s latency).
MAC Address: C0:A5:3E:30:64:23 (Apple)
Nmap scan report for 10.33.2.223
Host is up (0.12s latency).
MAC Address: C4:B3:01:D5:47:39 (Apple)
Nmap scan report for 10.33.2.228
Host is up (0.0030s latency).
MAC Address: 34:E1:2D:DC:AA:0F (Intel Corporate)
Nmap scan report for 10.33.2.230
Host is up (0.0060s latency).
MAC Address: DA:4E:6C:67:D2:FA (Unknown)
Nmap scan report for 10.33.2.231
Host is up (0.0049s latency).
MAC Address: 9C:B6:D0:FE:B0:D5 (Rivet Networks)
Nmap scan report for 10.33.2.235
Host is up (0.097s latency).
MAC Address: B8:5D:0A:67:0E:8B (Apple)
Nmap scan report for 10.33.2.237
Host is up (0.31s latency).
MAC Address: 98:09:CF:40:FE:4D (OnePlus Technology (Shenzhen))
Nmap scan report for 10.33.2.238
Host is up (0.0080s latency).
MAC Address: 90:78:41:8C:8D:3B (Intel Corporate)
Nmap scan report for 10.33.2.241
Host is up (0.032s latency).
MAC Address: B0:72:BF:85:17:D1 (Murata Manufacturing)
Nmap scan report for 10.33.2.242
Host is up (0.047s latency).
MAC Address: A0:51:0B:13:47:37 (Intel Corporate)
Nmap scan report for 10.33.2.243
Host is up (0.091s latency).
MAC Address: AC:BC:32:91:0B:57 (Apple)
Nmap scan report for 10.33.2.244
Host is up (0.065s latency).
MAC Address: F4:BF:80:C0:A5:8A (Huawei Technologies)
Nmap scan report for 10.33.2.247
Host is up (0.018s latency).
MAC Address: FC:01:7C:84:B2:0B (Hon Hai Precision Ind.)
Nmap scan report for 10.33.2.248
Host is up (0.12s latency).
MAC Address: 68:EC:C5:B0:F6:B2 (Intel Corporate)
Nmap scan report for 10.33.2.250
Host is up (0.037s latency).
MAC Address: 0C:70:4A:F8:63:B2 (Huawei Technologies)
Nmap scan report for 10.33.2.252
Host is up (0.0040s latency).
MAC Address: 88:E9:FE:81:1A:AD (Apple)
Nmap scan report for 10.33.2.254
Host is up (0.10s latency).
MAC Address: 48:83:B4:CD:D6:9D (Guangdong Oppo Mobile Telecommunications)
Nmap scan report for 10.33.2.255
Host is up (0.0030s latency).
MAC Address: 80:A5:89:9D:A7:8D (AzureWave Technology)
Nmap scan report for 10.33.3.5
Host is up (0.084s latency).
MAC Address: AE:89:2F:05:60:8B (Unknown)
Nmap scan report for 10.33.3.8
Host is up (0.0050s latency).
MAC Address: 18:5E:0F:D9:F5:3F (Intel Corporate)
Nmap scan report for 10.33.3.10
Host is up (0.039s latency).
MAC Address: E4:2B:34:17:EC:69 (Apple)
Nmap scan report for 10.33.3.15
Host is up (1.3s latency).
MAC Address: 40:98:AD:0A:0B:33 (Apple)
Nmap scan report for 10.33.3.19
Host is up (0.0070s latency).
MAC Address: 38:00:25:4A:81:07 (Intel Corporate)
Nmap scan report for 10.33.3.22
Host is up (0.19s latency).
MAC Address: F0:98:9D:4F:3C:15 (Apple)
Nmap scan report for 10.33.3.23
Host is up (0.093s latency).
MAC Address: 8C:85:90:0A:73:40 (Apple)
Nmap scan report for 10.33.3.25
Host is up (0.0080s latency).
MAC Address: 48:2C:A0:74:43:B6 (Xiaomi Communications)
Nmap scan report for 10.33.3.29
Host is up (0.016s latency).
MAC Address: 90:94:97:79:BE:D0 (Huawei Technologies)
Nmap scan report for 10.33.3.31
Host is up (0.088s latency).
MAC Address: 00:E1:8C:9D:92:61 (Intel Corporate)
Nmap scan report for 10.33.3.36
Host is up (0.15s latency).
MAC Address: 40:98:AD:22:D7:61 (Apple)
Nmap scan report for 10.33.3.39
Host is up (0.12s latency).
MAC Address: 50:E0:85:52:3F:D2 (Intel Corporate)
Nmap scan report for 10.33.3.40
Host is up (0.029s latency).
MAC Address: 38:F9:D3:CF:50:86 (Apple)
Nmap scan report for 10.33.3.42
Host is up (0.0030s latency).
MAC Address: F4:5C:89:BE:05:EF (Apple)
Nmap scan report for 10.33.3.44
Host is up (0.054s latency).
MAC Address: DC:0B:34:A7:B4:FE (LG Electronics (Mobile Communications))
Nmap scan report for 10.33.3.46
Host is up (0.11s latency).
MAC Address: 20:79:18:8E:F3:0A (Intel Corporate)
Nmap scan report for 10.33.3.48
Host is up (0.011s latency).
MAC Address: A0:88:69:70:A5:49 (Intel Corporate)
Nmap scan report for 10.33.3.50
Host is up (0.0030s latency).
MAC Address: 20:16:B9:42:E7:03 (Intel Corporate)
Nmap scan report for 10.33.3.51
Host is up (0.073s latency).
MAC Address: F8:34:41:F8:18:2B (Intel Corporate)
Nmap scan report for 10.33.3.53
Host is up (0.0060s latency).
MAC Address: B8:B2:F8:E4:AF:BD (Apple)
Nmap scan report for 10.33.3.55
Host is up (0.72s latency).
MAC Address: 30:07:4D:CF:5B:3E (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.3.56
Host is up (0.029s latency).
MAC Address: C8:FF:28:44:CC:3B (Liteon Technology)
Nmap scan report for 10.33.3.68
Host is up (0.12s latency).
MAC Address: C0:F4:E6:E9:81:02 (Huawei Technologies)
Nmap scan report for 10.33.3.70
Host is up (0.0070s latency).
MAC Address: 14:4F:8A:10:9E:6A (Intel Corporate)
Nmap scan report for 10.33.3.71
Host is up (0.0070s latency).
MAC Address: 94:B8:6D:70:9C:75 (Intel Corporate)
Nmap scan report for 10.33.3.73
Host is up (0.10s latency).
MAC Address: 14:4F:8A:C6:7C:D5 (Intel Corporate)
Nmap scan report for 10.33.3.75
Host is up (0.047s latency).
MAC Address: 88:E9:FE:85:78:A5 (Apple)
Nmap scan report for 10.33.3.78
Host is up (0.096s latency).
MAC Address: 8A:9A:A8:AA:F8:52 (Unknown)
Nmap scan report for 10.33.3.81
Host is up (0.68s latency).
MAC Address: E0:5F:45:B3:EE:89 (Apple)
Nmap scan report for 10.33.3.84
Host is up (0.33s latency).
MAC Address: 48:3B:38:29:2B:C2 (Apple)
Nmap scan report for 10.33.3.85
Host is up (0.075s latency).
MAC Address: 8C:86:1E:D2:F7:D8 (Apple)
Nmap scan report for 10.33.3.91
Host is up (0.090s latency).
MAC Address: EC:3C:BB:3C:30:16 (Unknown)
Nmap scan report for 10.33.3.97
Host is up (0.0060s latency).
MAC Address: 74:70:FD:C5:07:BF (Intel Corporate)
Nmap scan report for 10.33.3.102
Host is up (0.031s latency).
MAC Address: BC:E1:43:35:0B:6B (Apple)
Nmap scan report for 10.33.3.106
Host is up (0.038s latency).
MAC Address: 44:D7:91:83:D1:CA (Unknown)
Nmap scan report for 10.33.3.108
Host is up (0.0040s latency).
MAC Address: D4:6D:6D:C8:46:0F (Intel Corporate)
Nmap scan report for 10.33.3.110
Host is up (0.0080s latency).
MAC Address: 44:03:2C:AD:69:0C (Intel Corporate)
Nmap scan report for 10.33.3.111
Host is up (0.10s latency).
MAC Address: 98:2C:BC:C8:C8:DC (Unknown)
Nmap scan report for 10.33.3.114
Host is up (0.097s latency).
MAC Address: 6C:E8:5C:12:91:7E (Apple)
Nmap scan report for 10.33.3.116
Host is up (0.021s latency).
MAC Address: C0:B5:D7:92:4C:9F (Chongqing Fugui Electronics)
Nmap scan report for 10.33.3.117
Host is up (0.047s latency).
MAC Address: DC:FB:48:38:C2:0A (Intel Corporate)
Nmap scan report for 10.33.3.118
Host is up (0.21s latency).
MAC Address: 8C:25:05:DB:4A:2D (Huawei Technologies)
Nmap scan report for 10.33.3.121
Host is up (0.0060s latency).
MAC Address: 40:9C:28:30:25:1E (Apple)
Nmap scan report for 10.33.3.123
Host is up (0.0050s latency).
MAC Address: 14:4F:8A:22:6C:C1 (Intel Corporate)
Nmap scan report for 10.33.3.126
Host is up (0.0080s latency).
MAC Address: AC:D5:64:1C:A9:D9 (Chongqing Fugui Electronics)
Nmap scan report for 10.33.3.129
Host is up (0.075s latency).
MAC Address: E4:CE:8F:49:7B:34 (Apple)
Nmap scan report for 10.33.3.130
Host is up (0.0030s latency).
MAC Address: 14:4F:8A:C6:7D:0C (Intel Corporate)
Nmap scan report for 10.33.3.132
Host is up (0.028s latency).
MAC Address: A4:83:E7:74:72:B9 (Apple)
Nmap scan report for 10.33.3.134
Host is up (0.062s latency).
MAC Address: 90:32:4B:A5:0E:61 (Hon Hai Precision Ind.)
Nmap scan report for 10.33.3.136
Host is up (0.0060s latency).
MAC Address: 34:A8:EB:B9:50:A4 (Apple)
Nmap scan report for 10.33.3.138
Host is up (0.94s latency).
MAC Address: 80:A5:89:3C:21:BD (AzureWave Technology)
Nmap scan report for 10.33.3.149
Host is up (0.051s latency).
MAC Address: DC:D9:16:32:0E:31 (Huawei Technologies)
Nmap scan report for 10.33.3.150
Host is up (0.26s latency).
MAC Address: C0:EE:FB:79:02:A4 (OnePlus Tech (Shenzhen))
Nmap scan report for 10.33.3.151
Host is up (0.0050s latency).
MAC Address: 38:F9:D3:2F:EB:DE (Apple)
Nmap scan report for 10.33.3.152
Host is up (0.0030s latency).
MAC Address: 48:A4:72:7E:E6:59 (Intel Corporate)
Nmap scan report for 10.33.3.154
Host is up (0.063s latency).
MAC Address: F4:0F:24:23:C6:27 (Apple)
Nmap scan report for 10.33.3.155
Host is up (0.053s latency).
MAC Address: 28:3F:69:C3:18:DE (Sony Mobile Communications)
Nmap scan report for 10.33.3.157
Host is up (0.013s latency).
MAC Address: BC:A8:A6:FE:A2:18 (Intel Corporate)
Nmap scan report for 10.33.3.160
Host is up (0.030s latency).
MAC Address: D8:F2:CA:97:47:76 (Intel Corporate)
Nmap scan report for 10.33.3.161
Host is up (0.14s latency).
MAC Address: 18:F1:D8:A8:7F:AC (Apple)
Nmap scan report for 10.33.3.163
Host is up (0.0040s latency).
MAC Address: D8:F2:CA:0E:D5:8A (Intel Corporate)
Nmap scan report for 10.33.3.164
Host is up (0.015s latency).
MAC Address: F8:28:19:A1:2A:03 (Liteon Technology)
Nmap scan report for 10.33.3.165
Host is up (0.064s latency).
MAC Address: C8:21:58:1F:67:FB (Intel Corporate)
Nmap scan report for 10.33.3.166
Host is up (0.067s latency).
MAC Address: 14:87:6A:6E:12:5F (Unknown)
Nmap scan report for 10.33.3.169
Host is up (0.0040s latency).
MAC Address: DC:F5:05:5B:07:21 (AzureWave Technology)
Nmap scan report for 10.33.3.170
Host is up (0.32s latency).
MAC Address: BC:3D:85:DD:85:18 (Huawei Technologies)
Nmap scan report for 10.33.3.171
Host is up (0.010s latency).
MAC Address: C0:E4:34:1B:6B:81 (Unknown)
Nmap scan report for 10.33.3.172
Host is up (0.11s latency).
MAC Address: 40:23:43:30:84:99 (Chongqing Fugui Electronics)
Nmap scan report for 10.33.3.173
Host is up (0.039s latency).
MAC Address: 98:2C:BC:F8:58:E5 (Unknown)
Nmap scan report for 10.33.3.174
Host is up (0.060s latency).
MAC Address: D0:57:7B:A5:BB:76 (Intel Corporate)
Nmap scan report for 10.33.3.178
Host is up (0.0040s latency).
MAC Address: C0:B6:F9:A9:FB:AA (Intel Corporate)
Nmap scan report for 10.33.3.181
Host is up (0.0030s latency).
MAC Address: F8:94:C2:2A:BF:CF (Intel Corporate)
Nmap scan report for 10.33.3.187
Host is up (0.051s latency).
MAC Address: 28:CF:E9:1D:11:A9 (Apple)
Nmap scan report for 10.33.3.192
Host is up (0.076s latency).
MAC Address: F4:8C:50:8D:60:AD (Intel Corporate)
Nmap scan report for 10.33.3.198
Host is up (0.0070s latency).
MAC Address: 80:91:33:1E:04:EB (AzureWave Technology)
Nmap scan report for 10.33.3.200
Host is up (0.0070s latency).
MAC Address: 64:5D:86:CA:11:F6 (Intel Corporate)
Nmap scan report for 10.33.3.202
Host is up (0.64s latency).
MAC Address: 44:18:FD:F1:79:0E (Apple)
Nmap scan report for 10.33.3.204
Host is up (0.55s latency).
MAC Address: 74:B5:87:8D:D8:92 (Apple)
Nmap scan report for 10.33.3.206
Host is up (0.0040s latency).
MAC Address: E4:70:B8:28:3A:20 (Intel Corporate)
Nmap scan report for 10.33.3.208
Host is up (0.39s latency).
MAC Address: 8C:B8:4A:C8:E6:0E (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.3.209
Host is up (0.44s latency).
MAC Address: A8:5C:2C:19:28:8A (Apple)
Nmap scan report for 10.33.3.211
Host is up (0.23s latency).
MAC Address: 64:70:33:23:16:60 (Apple)
Nmap scan report for 10.33.3.212
Host is up (0.16s latency).
MAC Address: F4:60:E2:BB:FA:14 (Xiaomi Communications)
Nmap scan report for 10.33.3.214
Host is up (0.25s latency).
MAC Address: 88:11:96:B0:67:A6 (Huawei Technologies)
Nmap scan report for 10.33.3.216
Host is up (0.0030s latency).
MAC Address: 74:E5:F9:33:A0:A9 (Intel Corporate)
Nmap scan report for 10.33.3.219
Host is up (0.065s latency).
MAC Address: 38:F9:D3:8D:69:4B (Apple)
Nmap scan report for 10.33.3.224
Host is up (0.011s latency).
MAC Address: 24:0A:64:1E:EE:2F (AzureWave Technology)
Nmap scan report for 10.33.3.225
Host is up (0.31s latency).
MAC Address: 08:C5:E1:F1:8E:13 (Samsung Electro-mechanics(thailand))
Nmap scan report for 10.33.3.226
Host is up (0.0040s latency).
MAC Address: 34:F3:9A:74:6F:6C (Intel Corporate)
Nmap scan report for 10.33.3.237
Host is up (0.17s latency).
MAC Address: 9C:5C:F9:3B:70:AB (Sony Mobile Communications)
Nmap scan report for 10.33.3.238
Host is up (0.0070s latency).
MAC Address: 7C:B0:C2:B4:31:4C (Intel Corporate)
Nmap scan report for 10.33.3.239
Host is up (0.28s latency).
MAC Address: B0:48:1A:D8:CA:31 (Apple)
Nmap scan report for 10.33.3.240
Host is up (0.012s latency).
MAC Address: 00:B3:62:81:39:E4 (Apple)
Nmap scan report for 10.33.3.242
Host is up (0.31s latency).
MAC Address: 18:01:F1:80:C8:50 (Xiaomi Communications)
Nmap scan report for 10.33.3.246
Host is up (0.23s latency).
MAC Address: 1C:CC:D6:8F:D6:13 (Unknown)
Nmap scan report for 10.33.3.248
Host is up (1.3s latency).
MAC Address: 80:0C:67:4F:FF:10 (Unknown)
Nmap scan report for 10.33.3.253
Host is up (0.012s latency).
MAC Address: 00:12:00:40:4C:BF (Cisco Systems)
Nmap scan report for 10.33.3.254
Host is up (0.0010s latency).
MAC Address: 94:0C:6D:84:50:C8 (Tp-link Technologies)
Nmap scan report for 10.33.1.84
Host is up.
Nmap done: 1024 IP addresses (368 hosts up) scanned in 55.66 seconds
#######################ping pour avoir les adresses ip de libre
#######################picture pour lee changements d'adresse ip 
III serveur dhcp ligne commande 
C:\Users\bapti>ipconfig /release

Configuration IP de Windows

Aucune opération ne peut être effectuée sur Ethernet lorsque
son média est déconnecté.
Aucune opération ne peut être effectuée sur Connexion au réseau local* 2 lorsque
son média est déconnecté.
Aucune opération ne peut être effectuée sur Connexion au réseau local* 3 lorsque
son média est déconnecté.
Aucune opération ne peut être effectuée sur Connexion réseau Bluetooth lorsque
son média est déconnecté.

Carte Ethernet Ethernet :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

Carte Ethernet Ethernet 2 :

   Suffixe DNS propre à la connexion. . . :
   Adresse IPv6 de liaison locale. . . . .: fe80::3d27:2f72:e101:9c45%16
   Adresse IPv4. . . . . . . . . . . . . .: 192.168.56.1
   Masque de sous-réseau. . . . . . . . . : 255.255.255.0
   Passerelle par défaut. . . . . . . . . :

Carte Ethernet Npcap Loopback Adapter :

   Suffixe DNS propre à la connexion. . . :
   Adresse IPv6 de liaison locale. . . . .: fe80::8ca9:6822:3d53:7655%21
   Adresse d’autoconfiguration IPv4 . . . : 169.254.118.85
   Masque de sous-réseau. . . . . . . . . : 255.255.0.0
   Passerelle par défaut. . . . . . . . . :

Carte réseau sans fil Connexion au réseau local* 2 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

Carte réseau sans fil Connexion au réseau local* 3 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

Carte réseau sans fil Wi-Fi :

   Suffixe DNS propre à la connexion. . . :
   Adresse IPv6 de liaison locale. . . . .: fe80::14b3:b401:fc37:aec0%3
   Passerelle par défaut. . . . . . . . . :

Carte Ethernet Connexion réseau Bluetooth :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

C:\Users\bapti>

####################################changement adresse ethernet

C:\Users\bapti>ping 192.168.34.194

Envoi d’une requête 'Ping'  192.168.34.194 avec 32 octets de données :
Réponse de 192.168.34.194 : octets=32 temps<1ms TTL=128
Réponse de 192.168.34.194 : octets=32 temps<1ms TTL=128
Réponse de 192.168.34.194 : octets=32 temps<1ms TTL=128
Réponse de 192.168.34.194 : octets=32 temps<1ms TTL=128

Statistiques Ping pour 192.168.34.194:
    Paquets : envoyés = 4, reçus = 4, perdus = 0 (perte 0%),
Durée approximative des boucles en millisecondes :
    Minimum = 0ms, Maximum = 0ms, Moyenne = 0ms
#########################################################ping camarade voir picture pour les adresse ip 




#########################################################Commande pour changer d'ip et de bail dhcp
C:\Users\bapti>ipconfig /renew

Configuration IP de Windows

Aucune opération ne peut être effectuée sur Ethernet lorsque
son média est déconnecté.
Une erreur s’est produite lors du renouvellement de l’interface Npcap Loopback Adapter :
Impossible de contacter votre serveur DHCP.
Le délai d’attente de la demande a expiré.
Aucune opération ne peut être effectuée sur Connexion au réseau local* 2 lorsque
son média est déconnecté.
Aucune opération ne peut être effectuée sur Connexion au réseau local* 3 lorsque
son média est déconnecté.
Aucune opération ne peut être effectuée sur Connexion réseau Bluetooth lorsque
son média est déconnecté.

Carte Ethernet Ethernet :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

Carte Ethernet Ethernet 2 :

   Suffixe DNS propre à la connexion. . . :
   Adresse IPv6 de liaison locale. . . . .: fe80::3d27:2f72:e101:9c45%16
   Adresse IPv4. . . . . . . . . . . . . .: 192.168.56.1
   Masque de sous-réseau. . . . . . . . . : 255.255.255.0
   Passerelle par défaut. . . . . . . . . :

Carte Ethernet Npcap Loopback Adapter :

   Suffixe DNS propre à la connexion. . . :
   Adresse IPv6 de liaison locale. . . . .: fe80::8ca9:6822:3d53:7655%21
   Adresse d’autoconfiguration IPv4 . . . : 169.254.118.85
   Masque de sous-réseau. . . . . . . . . : 255.255.0.0
   Passerelle par défaut. . . . . . . . . :

Carte réseau sans fil Connexion au réseau local* 2 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

Carte réseau sans fil Connexion au réseau local* 3 :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

Carte réseau sans fil Wi-Fi :

   Suffixe DNS propre à la connexion. . . : auvence.co
   Adresse IPv6 de liaison locale. . . . .: fe80::14b3:b401:fc37:aec0%3
   Adresse IPv4. . . . . . . . . . . . . .: 10.33.1.84
   Masque de sous-réseau. . . . . . . . . : 255.255.252.0
   Passerelle par défaut. . . . . . . . . : 10.33.3.253

Carte Ethernet Connexion réseau Bluetooth :

   Statut du média. . . . . . . . . . . . : Média déconnecté
   Suffixe DNS propre à la connexion. . . :

#########################################################screen ipconfig /all dns
On peut constater que l’adresse DNS est 10.33.10.20
pour faire des requetes a ynov et google regarder le screen requetesynovetgoogle


Cependant, avec certains sites, on peut trouver à quels sites appartiennent ces IP.
