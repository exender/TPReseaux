# TP 3 - Routage, ARP, Spéléologie réseau

## Préparation de l'environnement

### 1. Mise à jour du patron

On installe aussi des packets qui sont tcpdump, traceroute, nc, bind-utils, vim pour les installer on fait les commandes sudo yum install tcpdump, sudo yum install traceroute, sudo yum install nc, sudo yum install bind-utils, sudo yum install vim. Et enfin on désactive le SELinux en commencent par sudo setenforce 0 puis on modifie le fichier /etc/selinux/config en remplacant SELINUX=enforcing par SELINUX=permissive. Pour maj sudo yum update -y puis la commande sudo yum upgrade -y. 

### 2.Mise en place du lab

Pour la VM serveur. On fait un ip a pour vérifier que la NAT est désactivé et que l'adresse IP sur le réseau Host-Only est bien 10.3.2.11

```
[baptiste@server1 ~]$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:1f:cd:e4 brd ff:ff:ff:ff:ff:ff
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:2a:69:a7 brd ff:ff:ff:ff:ff:ff
    inet 10.3.2.11/24 brd 10.3.2.255 scope global noprefixroute enp0s8
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe2a:69a7/64 scope link
       valid_lft forever preferred_lft forever
```

Donc on voit bien que la carte NAT est désactivé car elle n'a pas d'adresse IP et que l'adresse IP sur le réseau Host-Only est bien 10.3.2.11

On chercher maintenant à vérifier que le service ssh est bien sur le port 7777 pour ce faire on fait la commande sudo ss -ltunp.

```
[baptiste@server1 ~]$ sudo ss -ltunp
Netid  State      Recv-Q Send-Q            Local Address:Port                           Peer Address:Port
tcp    LISTEN     0      100                   127.0.0.1:25                                        *:*                   users:(("master",pid=1306,fd=13))
tcp    LISTEN     0      128                           *:7777                                      *:*                   users:(("sshd",pid=1455,fd=3))
tcp    LISTEN     0      100                       [::1]:25                                     [::]:*                   users:(("master",pid=1306,fd=14))
tcp    LISTEN     0      128                        [::]:7777                                   [::]:*                   users:(("sshd",pid=1455,fd=4))
```

Donc on voit bien que le service ssh ne sont plus sur le port 22 mais maintenant sur le port 7777 ce que l'on voulait. 

Maintenant on veut vérifier que l'on a bien mis l'autorisation du firewall pour le port 7777. Pour ce faire on fait la commande sudo firewall-cmd --list-all.

```
[baptiste@server1 ~]$ sudo firewall-cmd --list-all
public (active)
  target: default
  icmp-block-inversion: no
  interfaces: enp0s8
  sources:
  services: dhcpv6-client ssh
  ports: 7777/tcp
  protocols:
  masquerade: no
  forward-ports:
  source-ports:
  icmp-blocks:
  rich rules:
```

Le resultat nous montre que le port 7777 est bien autorisé au niveau du firewall.

On cherche aussi a vérifier que le nom pour la VM a bien été configuré pour ce faire on fait la commande hostname --fqdn.

```
[baptiste@server1 ~]$ hostname --fqdn
server1.net2.tp3
```

Le résultat nous montre que le nom de la VM est bien server1.net2.tp3

On cherche aussi a vérifier que le fichier /etc/hosts a bien été configuré. Pour ce faire on fait la commande sudo nano /etc/hosts

```
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
10.3.2.254  router.tp3
10.3.1.11   client1.net1.tp3
```

Donc on voit bien que le fichier a bien été configuré car il y a les adresses IP qui sont associé au bon nom de domaine.
!
```
[baptiste@router ~]$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:d4:aa:92 brd ff:ff:ff:ff:ff:ff
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:8c:8e:b4 brd ff:ff:ff:ff:ff:ff
    inet 10.3.1.254/24 brd 10.3.1.255 scope global noprefixroute enp0s8
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe8c:8eb4/64 scope link
       valid_lft forever preferred_lft forever
4: enp0s9: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:37:c7:7f brd ff:ff:ff:ff:ff:ff
    inet 10.3.2.254/24 brd 10.3.2.255 scope global noprefixroute enp0s9
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe37:c77f/64 scope link
       valid_lft forever preferred_lft forever
```

Donc on voit bien que la carte NAT est désactivé car elle n'a pas d'adresse IP et que l'adresse IP sur le réseau Host-Only est bien 10.3.1.254 et que l'adresse IP sur l'autre réseau Host-Only est bien 10.3.2.254

On chercher maintenant à vérifier que le service ssh est bien sur le port 7777 pour ce faire on fait la commande sudo ss -ltunp.

```
[baptiste@router ~]$ sudo ss -ltunp
Netid  State      Recv-Q Send-Q            Local Address:Port                           Peer Address:Port
tcp    LISTEN     0      100                   127.0.0.1:25                                        *:*                   users:(("master",pid=1343,fd=13))
tcp    LISTEN     0      128                           *:7777                                      *:*                   users:(("sshd",pid=1872,fd=3))
tcp    LISTEN     0      100                       [::1]:25                                     [::]:*                   users:(("master",pid=1343,fd=14))
tcp    LISTEN     0      128                        [::]:7777                                   [::]:*                   users:(("sshd",pid=1872,fd=4))
```

On est actuellement plus sur le port 22.

Autorisation sur le port 7777 avec authorisation avec le firewall

```
[baptiste@router ~]$ sudo firewall-cmd --list-all
public (active)
  target: default
  icmp-block-inversion: no
  interfaces: enp0s8 enp0s9
  sources:
  services: dhcpv6-client ssh
  ports: 7777/tcp
  protocols:
  masquerade: no
  forward-ports:
  source-ports:
  icmp-blocks:
  rich rules:
```

Le resultat nous montre que le port 7777 est bien autorisé au niveau du firewall.

On cherche aussi a vérifier que le nom pour la VM a bien été configuré pour ce faire on fait la commande hostname --fqdn.

```
[baptiste@router ~]$ hostname --fqdn
router.tp3
```

Le résultat nous montre que le nom de la VM est bien router.tp3
Vérifier que le fichier /etc/hosts a bien été configuré. Pour ce faire on fait la commande sudo nano /etc/hosts

```
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
10.3.1.11   client1.net1.tp3
10.3.2.11   server1.net2.tp3
```

On voit bien que le fichier a bien été configuré.

Réseau Host-Only est bien 10.3.1.11

```
[baptiste@client1 ~]$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:32:71:57 brd ff:ff:ff:ff:ff:ff
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:4b:87:fb brd ff:ff:ff:ff:ff:ff
    inet 10.3.1.11/24 brd 10.3.1.255 scope global noprefixroute enp0s8
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe4b:87fb/64 scope link
       valid_lft forever preferred_lft forever
```

Réseau Host-Only est bien 10.3.1.11
Verfication ssh est bien sur le port 7777 pour ce faire on fait la commande sudo ss -ltunp.

```
[baptiste@client1 ~]$ sudo ss -ltunp
Netid  State      Recv-Q Send-Q            Local Address:Port                           Peer Address:Port
tcp    LISTEN     0      100                   127.0.0.1:25                                        *:*                   users:(("master",pid=1303,fd=13))
tcp    LISTEN     0      128                           *:7777                                      *:*                   users:(("sshd",pid=1454,fd=3))
tcp    LISTEN     0      100                       [::1]:25                                     [::]:*                   users:(("master",pid=1303,fd=14))
tcp    LISTEN     0      128                        [::]:7777                                   [::]:*                   users:(("sshd",pid=1454,fd=4))
```
Le service ssh n'est plus sur le port 22 mais maintenant sur le port 7777 ce que l'on voulait. 

Verifier que l'on a bien l'autorisation du firewall sur le port 7777. Pour ce faire on fait la commande sudo firewall-cmd --list-all.

```
[baptiste@client1 ~]$ sudo firewall-cmd --list-all
public (active)
  target: default
  icmp-block-inversion: no
  interfaces: enp0s8
  sources:
  services: dhcpv6-client ssh
  ports: 7777/tcp
  protocols:
  masquerade: no
  forward-ports:
  source-ports:
  icmp-blocks:
  rich rules:
```
Le port est bien authoriser sur le port 7777
vérifier que le nom pour la VM a bien été configuré pour ce faire on fait la commande hostname --fqdn.

```
[baptiste@client1 ~]$ hostname --fqdn
client1.net1.tp3
```

Le résultat nous montre que le nom de la VM est bien client1.net1.tp3

Verifier que le fichier /etc/hosts a bien été configuré. Pour ce faire on fait la commande sudo nano /etc/hosts

```
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
10.3.1.254  router.tp3
10.3.2.11   server1.net2.tp3
```
Ping de la VM serveur vers la VM routeur.

```
[baptiste@server1 ~]$ ping router.tp3
PING router.tp3 (10.3.2.254) 56(84) bytes of data.
64 bytes from router.tp3 (10.3.2.254): icmp_seq=1 ttl=64 time=0.482 ms
64 bytes from router.tp3 (10.3.2.254): icmp_seq=2 ttl=64 time=0.401 ms
64 bytes from router.tp3 (10.3.2.254): icmp_seq=3 ttl=64 time=0.400 ms
^C
--- router.tp3 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2000ms
rtt min/avg/max/mdev = 0.400/0.434/0.492/0.044 ms
```

On voit que la VM serveur à bien réussi à ping la VM routeur.

Ping de la VM routeur vers la VM serveur.

```
[baptiste@router ~]$ ping server1.net2.tp3
PING server1.net2.tp3 (10.3.2.11) 56(84) bytes of data.
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=1 ttl=64 time=0.288 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=2 ttl=64 time=0.426 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=3 ttl=64 time=0.580 ms
^C
--- server1.net2.tp3 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2004ms
rtt min/avg/max/mdev = 0.298/0.435/0.582/0.117 ms
```

On voit que la VM routeur à bien réussi à ping la VM serveur.

Ping de la VM client vers la VM routeur.

```
[baptiste@client1 ~]$ ping router.tp3
PING router.tp3 (10.3.1.254) 56(84) bytes of data.
64 bytes from router.tp3 (10.3.1.254): icmp_seq=1 ttl=64 time=0.530 ms
64 bytes from router.tp3 (10.3.1.254): icmp_seq=2 ttl=64 time=0.378 ms
64 bytes from router.tp3 (10.3.1.254): icmp_seq=3 ttl=64 time=0.572 ms
64 bytes from router.tp3 (10.3.1.254): icmp_seq=4 ttl=64 time=0.316 ms
^C
--- router.tp3 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3002ms
rtt min/avg/max/mdev = 0.316/0.421/0.572/0.096 ms
```

On voit que la VM client à bien réussi à ping la VM routeur.

Ping de la VM routeur vers la VM client.

```
[baptiste@router ~]$ ping client1.net1.tp3
PING client1.net1.tp3 (10.3.1.11) 56(84) bytes of data.
64 bytes from client1.net1.tp3 (10.3.1.11): icmp_seq=1 ttl=64 time=0.282 ms
64 bytes from client1.net1.tp3 (10.3.1.11): icmp_seq=2 ttl=64 time=0.368 ms
64 bytes from client1.net1.tp3 (10.3.1.11): icmp_seq=3 ttl=64 time=0.250 ms
^C
--- client1.net1.tp3 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2020ms
rtt min/avg/max/mdev = 0.250/0.300/0.368/0.047 ms
```

On voit que la VM routeur à bien réussi à ping la VM client.

## I.Mise en place du routage

### 1.Configuration du routage sur router

sudo sysctl -w net.ipv4.conf.all.forwarding=1

```
[baptiste@router ~]$ sudo sysctl -w net.ipv4.conf.all.forwarding=1
net.ipv4.conf.all.forwarding = 1
```

 Sortie sudo sysctl -w net.ipv4.conf.all.forwarding = 1

### 2.Ajouter les routes statiques


Pour commencer on va ajouter la route statique entre la VM client et le réseau net2 pour ce faire on fait la commande sudo ip route add 10.3.2.0/24 via 10.3.1.254 dev enp0s8

`[baptiste@client1 ~]$ sudo ip route add 10.3.2.0/24 via 10.3.1.254 dev enp0s8`

Pour enregistrer de façon permanent la route statique entre la VM client et le réseau net2 il faut écrire 10.3.2.0/24 via 10.3.1.254 dev enp0s8 dans le fichier /etc/sysconfig/network-scripts/route-enp0s8

Pour continuer on va ajouter la route statique entre la VM serveur et le réseau net1 de façon temporaire pour ce faire on fait la commande sudo ip route add 10.3.1.0/24 via 10.3.2.254 dev enp0s8

`[baptiste@server1 ~]$ sudo ip route add 10.3.1.0/24 via 10.3.2.254 dev enp0s8`

Enregistrer de facon permanante il faut faire 10.3.1.0/24 via 10.3.2.254 dev enp0s8 dans le fichier /etc/sysconfig/network-scripts/route-enp0s8



```
[baptiste@client1 ~]$ ip r s
10.3.1.0/24 dev enp0s8 proto kernel scope link src 10.3.1.11 metric 100
10.3.2.0/24 via 10.3.1.254 dev enp0s8
10.3.2.0/24 via 10.3.1.254 dev enp0s8 proto static metric 100
```

Commande bien prise en compte avec cette sortit 10.3.2.0/24 via 10.3.1.254 dev enp0s8

```
[baptiste@server1 ~]$ ip r s
10.3.1.0/24 via 10.3.2.254 dev enp0s8
10.3.1.0/24 via 10.3.2.254 dev enp0s8 proto static metric 100
10.3.2.0/24 dev enp0s8 proto kernel scope link src 10.3.2.11 metric 100
```
Comande bien prise en compte 10.3.1.0/24 via 10.3.2.254 dev enp0s8

```
[baptiste@server1 ~]$ ping client1.net1.tp3
PING client1.net1.tp3 (10.3.1.11) 56(84) bytes of data.
64 bytes from client1.net1.tp3 (10.3.1.11): icmp_seq=1 ttl=63 time=0.784 ms
64 bytes from client1.net1.tp3 (10.3.1.11): icmp_seq=2 ttl=63 time=0.722 ms
64 bytes from client1.net1.tp3 (10.3.1.11): icmp_seq=3 ttl=63 time=0.748 ms
64 bytes from client1.net1.tp3 (10.3.1.11): icmp_seq=4 ttl=63 time=0.798 ms
   ^C^V
--- client1.net1.tp3 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3001ms
rtt min/avg/max/mdev = 0.726/0.760/0.794/0.038 ms
```

On cherche a verifier si la route statique fonctionne bien et a été prise en compte

```
[baptiste@client1 ~]$ ping server1.net2.tp3
PING server1.net2.tp3 (10.3.2.11) 56(84) bytes of data.
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=1 ttl=63 time=0.802 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=2 ttl=63 time=0.999 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=3 ttl=63 time=0.526 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=4 ttl=63 time=0.694 ms
^C
--- server1.net2.tp3 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3014ms
rtt min/avg/max/mdev = 0.526/0.755/0.999/0.172 ms
```

La route statique est bien fonctionelle

```
[baptiste@server1 ~]$ traceroute client1.net1.tp3
traceroute to client1.net1.tp3 (10.3.1.11), 30 hops max, 60 byte packets
 1  router.tp3 (10.3.2.254)  0.257 ms  0.165 ms  0.116 ms
 2  client1.net1.tp3 (10.3.1.11)  0.337 ms !X  0.325 ms !X  0.269 ms !X
```

Le passage entre le clien et le server ce passe bien

```
[baptiste@client1 ~]$ traceroute server1.net2.tp3
traceroute to server1.net2.tp3 (10.3.2.11), 30 hops max, 60 byte packets
 1  router.tp3 (10.3.1.254)  0.331 ms  0.196 ms  0.263 ms
 2  server1.net2.tp3 (10.3.2.11)  0.477 ms !X  0.442 ms !X  0.337 ms !X
```

Donc le passage entre la VM client et la VM client passe bien par la VM routeur car avant d'arriver à la VM serveur il passe par la VM routeur avec la ligne router.tp3 (10.3.1.154)

### 3.Comprendre le routage



```
[baptiste@router ~]$ sudo tcpdump -i enp0s8 -w capture1.pcap not port 7777
tcpdump: listening on enp0s8, link-type EN10MB (Ethernet), capture size 262144 bytes
^C
packets captured
2 packets received by filter
0 packets dropped by kernel
```

Le résultat nous montre que le tcpdump sur l'interface enp0s8 sans la connection ssh a capturé 2 packets qui sont les packets du au ping entre la VM client et la VM serveur.

```
[baptiste@router ~]$ sudo tcpdump -i enp0s9 -w capture2.pcap not port 7777
tcpdump: listening on enp0s9, link-type EN10MB (Ethernet), capture size 262144 bytes
^C2 packets captured
2 packets received by filter
0 packets dropped by kernel
```

Le résultat nous montre que le tcpdump sur l'interface enp0s9 sans la connection ssh a capturé 2 packets qui sont les packets du au ping entre la VM client et la VM serveur.

```
[baptiste@client1 ~]$ ping server1.net2.tp3
PING server1.net2.tp3 (10.3.2.11) 56(84) bytes of data.
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=1 ttl=63 time=0.687 ms
^C
--- server1.net2.tp3 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 0.698/0.698/0.688/0.000 ms
```

Le résultat du ping server1.net2.tp3 nous montre qu'il y a eu l'envoit d'un packet par la VM client vers la VM serveur.

Le résultat de la capture 1 du tcpdump dans Wireshark est le suivant la trame choisit pour remplir le tableau est la première trame de la capture. Pour information la capture 1 est celle qui analyser le flux sur le réseau net1.

![](https://i.imgur.com/vI2ior0.png)

Le résultat de la capture 2 du tcpdump dans Wireshark est le suivant la trame choisit pour remplir le tableau est la première trame de la capture. Pour information la capture 2 est celle qui analyser le flux sur le réseau net2.

![](https://i.imgur.com/mNPOWUy.png)


|             | MAC src       | MAC dst       | IP src       | IP dst       |
| ----------- | ------------- | ------------- | ------------ | ------------ |
| Dans net1 (trame qui entre dans router) | 08:00:27:4b:87:fb | 08:00:27:8c:8e:b4 | 10.3.1.11 | 10.3.2.11 |
| Dans net2 (trame qui sort de router) | 08:00:27:37:c7:7f | 08:00:27:2a:69:a7 | 10.3.2.254 | 10.3.2.11 |

## II. ARP

### 1. Tableaux ARP

```
[baptiste@client1 ~]$ ping server1.net2.tp3
PING server1.net2.tp3 (10.3.2.11) 56(84) bytes of data.
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=1 ttl=63 time=1.08 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=2 ttl=63 time=0.592 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=3 ttl=63 time=0.825 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=4 ttl=63 time=0.490 ms
^C
--- server1.net2.tp3 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3009ms
rtt min/avg/max/mdev = 0.390/0.747/1.184/0.286 ms
```

Affichage de la table APR de la VM client avec la commande ip neigh show

```
[baptiste@client1 ~]$ ip neigh show
10.3.1.1 dev enp0s8 lladdr 0a:00:27:00:00:46 REACHABLE
10.3.1.254 dev enp0s8 lladdr 08:00:27:8c:8e:b4 STALE
```

Le résultat de la commande pour afficher la table ARP nous montre que la VM client connait l'adresse IP du PC hôte sur son réseau mais surout qu'elle connait l'adresse IP de la passerelle qui est l'adresse IP du routeur sur son réseau.

La table APR de la VM serveur avec la commande ip neigh show

```
[baptiste@server1 ~]$ ip neigh show
10.3.2.1 dev enp0s8 lladdr 0a:00:27:00:00:4b REACHABLE
10.3.2.254 dev enp0s8 lladdr 08:00:27:37:c7:7f REACHABLE
```

Le résultat de la commande pour afficher la table ARP nous montre que la VM serveur connait l'adresse IP  du PC hôte sur son réseau mais surout qu'elle connait l'adresse IP de la passerelle qui est l'adresse IP du routeur sur son réseau.

Affichage de la table APR de la VM routeur avec la commande ip neigh show

```
[baptiste@router ~]$ ip neigh show
10.3.2.11 dev enp0s9 lladdr 08:00:27:2a:69:a7 STALE
10.3.1.1 dev enp0s8 lladdr 0a:00:27:00:00:46 REACHABLE
10.3.1.11 dev enp0s8 lladdr 08:00:27:4b:87:fb REACHABLE
```

### 2. Requêtes ARP

#### A. Tableau ARP 1

La commande pour vider la table ARP de la VM routeur.

`[baptiste@router ~]$ sudo ip neigh flush all`

La commande pour vider la table ARP de la VM client.

`[baptiste@client1 ~]$ sudo ip neigh flush all`

Après que la table arp de la VM client a été vidé

```
[baptiste@client1 ~]$ ip neigh show
10.3.1.1 dev enp0s8 lladdr 0a:00:27:00:00:46 REACHABLE
```

ping client vers serveur
```
[baptiste@client1 ~]$ ping server1.net2.tp3
PING server1.net2.tp3 (10.3.2.11) 56(84) bytes of data.
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=1 ttl=63 time=0.502 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=2 ttl=63 time=0.787 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=3 ttl=63 time=0.635 ms
^C
--- server1.net2.tp3 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2007ms
rtt min/avg/max/mdev = 0.502/0.635/0.787/0.119 ms
```

Après le ping de client vers serveur
```
[baptiste@client1 ~]$ ip neigh show
10.3.1.1 dev enp0s8 lladdr 0a:00:27:00:00:46 REACHABLE
10.3.1.254 dev enp0s8 lladdr 08:00:27:8c:8e:b4 REACHABLE
```

`[baptiste@router ~]$ sudo ip neigh flush all`

`[baptiste@client1 ~]$ sudo ip neigh flush all`

`[baptiste@server1 ~]$ sudo ip neigh flush all`

Après que la table arp de la VM serveur a été vidé

```
[baptiste@server1 ~]$ ip neigh show
10.3.2.1 dev enp0s8 lladdr 0a:00:27:00:00:4b DELAY
```
ping client vers serveur
```
[baptiste@client1 ~]$ ping server1.net2.tp3
PING server1.net2.tp3 (10.3.2.11) 56(84) bytes of data.
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=1 ttl=63 time=1.02 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=2 ttl=63 time=0.587 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=3 ttl=63 time=0.687 ms
^C
--- server1.net2.tp3 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2008ms
rtt min/avg/max/mdev = 0.537/0.770/1.02/0.235 ms
```
Après le ping de client vers serveur
```
[baptiste@server1 ~]$ ip neigh show
10.3.2.1 dev enp0s8 lladdr 0a:00:27:00:00:4b DELAY
10.3.2.254 dev enp0s8 lladdr 08:00:27:37:c7:7f REACHABLE
```

TCPDUMP 1

`[baptiste@client1 ~]$ sudo ip neigh flush all`

`[baptiste@router ~]$ sudo ip neigh flush all`

```
[baptiste@client1 ~]$ ping server1.net2.tp3
PING server1.net2.tp3 (10.3.2.11) 56(84) bytes of data.
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=1 ttl=63 time=2.17 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=2 ttl=63 time=0.720 ms
^C
--- server1.net2.tp3 ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1002ms
rtt min/avg/max/mdev = 0.620/0.863/1.107/0.248 ms
```

TCPDUMP 2

`[baptiste@router ~]$ sudo ip neigh flush all`

`[baptiste@client1 ~]$ sudo ip neigh flush all`

`[baptiste@server1 ~]$ sudo ip neigh flush all`

```
[baptiste@client1 ~]$ ping server1.net2.tp3
PING server1.net2.tp3 (10.3.2.11) 56(84) bytes of data.
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=1 ttl=63 time=1.26 ms
64 bytes from server1.net2.tp3 (10.3.2.11): icmp_seq=2 ttl=63 time=0.621 ms
^C
--- server1.net2.tp3 ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1002ms
rtt min/avg/max/mdev = 0.626/0.914/1.203/0.290 ms
```



## Entracte : Donner un accès internet aux VM

```
[baptiste@router ~]$ sudo firewall-cmd --add-masquerade --permanent
success
```

```
[baptiste@router ~]$ sudo firewall-cmd --reload
success
```

Affecter la passerrelle est 10.3.1.254 et redemarée le service

```
[baptiste@client1 ~]$ ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=53 time=38.3 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=53 time=23.8 ms
^C
--- 8.8.8.8 ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1002ms
rtt min/avg/max/mdev = 33.123/35.730/38.338/2.614 ms
```

```
[baptiste@client1 ~]$ dig ynov.com

; <<>> DiG 9.11.4-P2-RedHat-9.11.4-9.P2.el7 <<>> ynov.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 50746
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1452
;; QUESTION SECTION:
;ynov.com.                      IN      A

;; ANSWER SECTION:
ynov.com.               10800   IN      A       217.70.184.38

;; Query time: 70 msec
;; SERVER: 1.1.1.1#53(1.1.1.1)
;; WHEN: Sun Mar 15 17:28:17 CET 2020
;; MSG SIZE  rcvd: 53
```

## III. Plus de tcpdump

### 1. TCP et UDP

#### A. Échauffement

```
[baptiste@client1 ~]$ sudo firewall-cmd --add-port=9999/tcp --permanent
success
```
```
[baptiste@client1 ~]$ sudo firewall-cmd --add-port=9999/udp --permanent
success
```

```
[baptiste@server1 ~]$ sudo firewall-cmd --add-port=9999/tcp --permanent
success
```

```
[baptiste@server1 ~]$ sudo firewall-cmd --add-port=9999/udp --permanent
success
```

```
[baptiste@client1 ~]$ sudo yum install -y epel-release
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.crazyfrogs.org
 * extras: ftp.pasteur.fr
 * updates: mirror.in2p3.fr
Resolving Dependencies
--> Running transaction check
---> Package epel-release.noarch 0:7-11 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

========================================================================================================================
 Package                          Arch                       Version                   Repository                  Size
========================================================================================================================
Installing:
 epel-release                     noarch                     7-11                      extras                      15 k

Transaction Summary
========================================================================================================================
Install  1 Package

Total download size: 15 k
Installed size: 24 k
Downloading packages:
epel-release-7-11.noarch.rpm                                                                     |  15 kB  00:00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : epel-release-7-11.noarch                                                                             1/1
  Verifying  : epel-release-7-11.noarch                                                                             1/1

Installed:
  epel-release.noarch 0:7-11

Complete!
```

```
[baptiste@client1 ~]$ sudo yum install -y sl
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
epel/x86_64/metalink                                                                             |  19 kB  00:00:00
 * base: centos.crazyfrogs.org
 * epel: fr2.rpmfind.net
 * extras: ftp.pasteur.fr
 * updates: mirror.in2p3.fr
epel                                                                                             | 5.3 kB  00:00:00
(1/3): epel/x86_64/group_gz                                                                      |  95 kB  00:00:00
(2/3): epel/x86_64/updateinfo                                                                    | 1.0 MB  00:00:02
(3/3): epel/x86_64/primary_db                                                                    | 6.7 MB  00:00:05
Resolving Dependencies
--> Running transaction check
---> Package sl.x86_64 0:5.02-1.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

========================================================================================================================
 Package                 Arch                        Version                            Repository                 Size
========================================================================================================================
Installing:
 sl                      x86_64                      5.02-1.el7                         epel                       14 k

Transaction Summary
========================================================================================================================
Install  1 Package

Total download size: 14 k
Installed size: 17 k
Downloading packages:
warning: /var/cache/yum/x86_64/7/epel/packages/sl-5.02-1.el7.x86_64.rpm: Header V3 RSA/SHA256 Signature, key ID 352c64e5: NOKEY
Public key for sl-5.02-1.el7.x86_64.rpm is not installed
sl-5.02-1.el7.x86_64.rpm                                                                         |  14 kB  00:00:00
Retrieving key from file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
Importing GPG key 0x352C64E5:
 Userid     : "Fedora EPEL (7) <epel@fedoraproject.org>"
 Fingerprint: 91e9 7d7c 4a5e 96f1 7f3e 888f 6a2f aea2 352c 64e5
 Package    : epel-release-7-11.noarch (@extras)
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : sl-5.02-1.el7.x86_64                                                                                 1/1
  Verifying  : sl-5.02-1.el7.x86_64                                                                                 1/1

Installed:
  sl.x86_64 0:5.02-1.el7

Complete!
```

`[baptiste@client1 ~]$ sl`

```
[baptiste@client1 ~]$ nc server1.net2.tp3 9999
yop
Rien
Salut
COmment vonje
Je vais bien
^C
```

```
[baptiste@server1 ~]$ nc -l -p 9999
yop
Rien
Salut
COmment vonje
Je vais bien
^C
```

```
[baptiste@client1 ~]$ nc -u server1.net2.tp3 9999
yop
Comment va tu ?
Parfait je continue le tp
yes
^C
```
```
[baptiste@server1 ~]$ nc -u -l -p 9999
yop
Comment va tu ?
Parfait je continue le tp
yes
^C
```


```
[baptiste@client1 ~]$ ssh baptiste@10.3.2.11 -p 7777
baptiste@10.3.2.11's password:
Last login: Mon Mar 16 10:43:15 2020 from router.tp3
```

```
[baptiste@client2 ~]$ sudo sysctl net.ipv4.ip_nonlocal_bind=1
net.ipv4.ip_nonlocal_bind = 1
```

```
[baptiste@client1 ~]$ ip neigh show
10.3.1.1 dev enp0s8 lladdr 0a:00:27:00:00:46 REACHABLE
10.3.1.254 dev enp0s8 lladdr 08:00:27:8c:8e:b4 REACHABLE
```
