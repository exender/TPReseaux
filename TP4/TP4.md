# TP 4 - Cisco, Routage, DHCP

## I. Topologie 1 : simple

#### B. Définition d'IPs statiques


On va d'abord configurer la vm centos sur virtualbox.

-Le selinux desactivé : 

```
[bapt@localhost ~]$ sestatus
SELinux status:                 enabled
SELinuxfs mount:                /sys/fs/selinux
SELinux root directory:         /etc/selinux
Loaded policy name:             targeted
Current mode:                   permissive
Mode from config file:          permissive
Policy MLS status:              enabled
Policy deny_unknown status:     allowed
Max kernel policy version:      31
```
Current mode est bien en permissive, donc le selinux est bien désactivé.

-Traceroute d'installé : 

```
[bapt@localhost ~]$ sudo yum -y install traceroute
[sudo] password for bapt:
Loaded plugins: fastestmirror
Determining fastest mirrors
 * base: ftp.pasteur.fr
 * extras: distrib-coffee.ipsl.jussieu.fr
 * updates: distrib-coffee.ipsl.jussieu.fr
base                                                                                             | 3.6 kB  00:00:00
extras                                                                                           | 2.9 kB  00:00:00
updates                                                                                          | 2.9 kB  00:00:00
(1/2): extras/7/x86_64/primary_db                                                                | 164 kB  00:00:04
(2/2): updates/7/x86_64/primary_db                                                               | 7.6 MB  00:00:09
Package 3:traceroute-2.0.22-2.el7.x86_64 already installed and latest version
Nothing to do
```

on peut voir que traceroute est deja installer sur la VM donc rien besoin de faire

-Création d'une ip statique : 

```
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:38:fc:d7 brd ff:ff:ff:ff:ff:ff
    inet 10.4.1.11/24 brd 10.4.1.255 scope global noprefixroute enp0s8
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe38:fcd7/64 scope link
       valid_lft forever preferred_lft forever
```

L'ip 10.4.1.11 a bien été créé.

Defintion d'un nom d'hôte : 

```
[bapt@localhost ~]$ echo 'admin1' | sudo tee /etc/hostname
admin1
[bapt@localhost ~]$ sudo hostname admin1
[bapt@localhost ~]$ hostname
admin1
```

Le nom de domaine a été defini sur "admin1"

### router

Definition des ips statiques en fonction du tableau d'adressage : 

```
R1#show ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            10.4.1.254      YES manual up                    up
FastEthernet1/0            10.4.2.254      YES manual up                    up

```


### guest

Definition de l'ip statique en fonction du tableau d'adressage : 

```
guest1> ip 10.4.2.11 255.255.255.0 10.4.2.254
Checking for duplicate address...
PC1 : 10.4.2.11 255.255.255.0 gateway 10.4.2.254
```

je decide de le nommer guest1

### VERIFICATION

guest peut joindre le router.

```
guest1> ping 10.4.2.254
84 bytes from 10.4.2.254 icmp_seq=1 ttl=255 time=8.206 ms
84 bytes from 10.4.2.254 icmp_seq=2 ttl=255 time=3.152 ms
84 bytes from 10.4.2.254 icmp_seq=3 ttl=255 time=8.012 ms
84 bytes from 10.4.2.254 icmp_seq=4 ttl=255 time=9.056 ms
84 bytes from 10.4.2.254 icmp_seq=5 ttl=255 time=10.831 ms

```

admin peut joindre router.

router peut joindre les deux autres machines.

```
R1#ping 10.4.1.11

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 10.4.1.11, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 36/45/68 ms

R1#ping 10.4.2.11

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 10.4.2.11, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 32/32/36 ms
```

Ping de router vers les 2 autres machines.

Maintenant, on va vérifier la table ARP de router.
D'abord, on vérifie que guest et admin sont bien présents dans la table ARP de router : 

```
R1#show arp
Protocol  Address          Age (min)  Hardware Addr   Type   Interface
Internet  10.4.1.11               4   0800.2738.fcd7  ARPA   FastEthernet0/0
Internet  10.4.2.11               8   0050.7966.6800  ARPA   FastEthernet1/0
Internet  10.4.1.254              -   cc01.04f4.0000  ARPA   FastEthernet0/0
Internet  10.4.2.254              -   cc01.04f4.0010  ARPA   FastEthernet1/0
```

Maintenant, on compare les mac.
Entre router et admin : 

router
```
Internet  10.4.1.11               4   0800.2738.fcd7  ARPA   FastEthernet0/0
```

admin
```
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:38:fc:d7 brd ff:ff:ff:ff:ff:ff
    inet 10.4.1.11/24 brd 10.4.1.255 scope global noprefixroute enp0s8
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe38:fcd7/64 scope link
       valid_lft forever preferred_lft forever
```

On constate effectivement que les adresses mac sont les même, donc la verification sur admin est bonne.

Entre router et guest : 

router
```
Internet  10.4.2.11               8   0050.7966.6800  ARPA   FastEthernet1/0
```

guest
```
guest1> show arp

cc:01:04:f4:00:10  10.4.2.254 expires in 106 seconds

```

On constate effectivement que les adresses mac sont les même, donc la verification sur admin est bonne aussi pour guest.

### C. Routage

On ajoute une route sur admin pour joindre guest.

On modifie le fichier "/etc/sysconfig/network-scripts/route-enp0s8" et on entre 10.4.2.0 via 10.4.1.254 dev enp0s8.

Pour guest, on ne peut pas ajouter une route par defaut. Donc on va lui ajouter une passerelle par défaut, comme fait précedemment.

```
guest1> ip 10.4.2.11 255.255.255.0 10.4.2.254
Checking for duplicate address...
PC1 : 10.4.2.11 255.255.255.0 gateway 10.4.2.254
```

On a bien ajouté comme passerelle par defaut le routeur, pour pouvoir communiquer entre les 2 vms.

Maintenant, on va ping les vms entre elles. D'abord, de guest vers admin : 

```
guest1> ping 10.4.1.11
84 bytes from 10.4.1.11 icmp_seq=1 ttl=63 time=20.898 ms
84 bytes from 10.4.1.11 icmp_seq=2 ttl=63 time=18.445 ms
84 bytes from 10.4.1.11 icmp_seq=3 ttl=63 time=14.717 ms
84 bytes from 10.4.1.11 icmp_seq=4 ttl=63 time=16.795 ms
84 bytes from 10.4.1.11 icmp_seq=5 ttl=63 time=17.526 ms

```

On verifie avec traceroute que les paquets transitent bien par router.
Sur guest : 

```
guest1> trace 10.4.1.11
trace to 10.4.1.11, 8 hops max, press Ctrl+C to stop
 1   10.4.2.254   4.512 ms  9.628 ms  10.656 ms
 2   *10.4.1.11   19.623 ms (ICMP type:3, code:10, Host administratively prohibited)
```

## II. Topologie 2 : dumb switches

### 2. Mise en place

### C. Vérification

Ping de guest vers admin : 

```
guest1> ping 10.4.1.11
84 bytes from 10.4.1.11 icmp_seq=1 ttl=63 time=31.098 ms
84 bytes from 10.4.1.11 icmp_seq=2 ttl=63 time=18.993 ms
84 bytes from 10.4.1.11 icmp_seq=3 ttl=63 time=18.138 ms
84 bytes from 10.4.1.11 icmp_seq=4 ttl=63 time=13.736 ms
84 bytes from 10.4.1.11 icmp_seq=5 ttl=63 time=20.879 ms

```



```
guest1> trace 10.4.1.11
trace to 10.4.1.11, 8 hops max, press Ctrl+C to stop
 1   10.4.2.254   7.481 ms  8.891 ms  10.199 ms
 2   *10.4.1.11   20.202 ms (ICMP type:3, code:10, Host administratively prohibited)
```


## III. Topologie 3 : adding nodes and NAT

### B. VPCS

On met 2 autres VPCS que l'on renomme (ici, guest 2 et guest 3).
Puis on fait les même configuration que pour guest 1.

Sur guest 2

```
guest2> ip 10.4.2.12 255.255.255.0 10.4.2.254
Checking for duplicate address...
PC1 : 10.4.2.12 255.255.255.0 gateway 10.4.2.254

```

Sur guest 3

```
guest3> ip 10.4.2.13 255.255.255.0 10.4.2.254
Checking for duplicate address...
PC1 : 10.4.2.13 255.255.255.0 gateway 10.4.2.254
```

Puis on fait un ping de guest 2 vers admin, et la même chose pour guest 3.
On fait un ping vour vérifier que guest 2 et 3 joignent bien admin.

Ping de guest 2 vers admin

```
guest2> ping 10.4.1.11
84 bytes from 10.4.1.11 icmp_seq=1 ttl=63 time=20.265 ms
84 bytes from 10.4.1.11 icmp_seq=2 ttl=63 time=18.478 ms
84 bytes from 10.4.1.11 icmp_seq=3 ttl=63 time=91.604 ms
84 bytes from 10.4.1.11 icmp_seq=4 ttl=63 time=32.366 ms
84 bytes from 10.4.1.11 icmp_seq=5 ttl=63 time=21.322 ms

```

Ping de guest 3 vers admin

```
guest3> ping 10.4.1.11
84 bytes from 10.4.1.11 icmp_seq=1 ttl=63 time=50.386 ms
84 bytes from 10.4.1.11 icmp_seq=2 ttl=63 time=22.605 ms
84 bytes from 10.4.1.11 icmp_seq=3 ttl=63 time=47.051 ms
84 bytes from 10.4.1.11 icmp_seq=4 ttl=63 time=13.771 ms
84 bytes from 10.4.1.11 icmp_seq=5 ttl=63 time=76.656 ms
```

Maintenant, on va vérifier la table ARP de guest 2 et 3.

Table ARP de guest 2 : 

```
guest2> show arp

cc:01:04:7f:00:10  10.4.2.254 expires in 110 seconds

```

Table ARP de guest 3 : 

```
guest3> show arp

cc:01:04:7f:00:10  10.4.2.254 expires in 105 seconds

```

### C. Accès WAN

### Donner un accès WAN au routeur

### Configurer le router

donner une ip en dhcp au router : 

```
R1#show ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            10.4.1.254      YES NVRAM  up                    up  
FastEthernet1/0            10.4.2.254      YES NVRAM  up                    up  
FastEthernet2/0            192.168.122.233 YES DHCP   up                    up  
```

configuration d'un NAT simple : 

```
R1#conf t
R1(config)#ip nat FastEthernet0/0
R1(config-if)#ip nat inside
R1(config-if)#exit
R1(config)#interface FastEthernet1/0
R1(config-if)#ip nat inside
R1(config-if)#exit
R1(config)#interface FastEthernet 2/0
R1(config-if)#ip nat outside
R1(config-if)#exit
R1(config)#ip nat inside source list 1 interface fastEthernet 2/0 overload
R1(config)#exit
R1#show ip int br
*Mar  1 00:19:00.535: %SYS-5-CONFIG_I: Configured from console by console
```
Les interfaces internes, sont les lans, ceux qui sont connectes par cable a la amchine en reseaux local. L'interfaces externe est celle connectée a internet.
De plus, on a une ligne qui apparait apres cette suite de commande dans l'affichage des adresses ip du router : 

```
R1#show ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            10.4.1.254      YES NVRAM  up                    up  
FastEthernet1/0            10.4.2.254      YES NVRAM  up                    up  
FastEthernet2/0            192.168.122.233 YES DHCP   up                    up  
NVI0                       unassigned      NO  unset  up                    up 
```

### Configurer les clients

Il faut ajouter les routes par defauts sur guest 1, 2, 3 et sur admin. Les routes sur guest 1, 2, 3 sont les gateways comme dit precedemment, car sur sico, on ne peut pas ajouter de route par defaut. Donc, on ajoute des passerelles par defaut.

sur guest 1 
>ip 10.4.2.11 255.255.255.0 10.4.2.254

sur guest 2
>ip 10.4.2.12 255.255.255.0 10.4.2.254

sur guest 3
>ip 10.4.2.13 255.255.255.0 10.4.2.254

Puis sur admin, on modifi le fichier "/etc/sysconfig/network-scripts/route-enp0s8" et on entre 10.4.2.0 via 10.4.1.254 dev enp0s8. Cela a deja été fait plus tôt.

Pour configurer l'utilisation d'un server DNS, on doit faire des modifications sur les vms admin, et guest (1, 2, 3).

Pour admin, on modifie le fichier resolv.conf, et on ajoute la ligne "name server 1.1.1.1".

Pour les guest , il faut utiliser la commande "ip dns 1.1.1.1"
Il faut donc l'effectuer sur toutes les vm

Guest 1, 2, 3
>ip dns 1.1.1.1

### Vérifications

Pour effectuer tous mes ping je vais ping google

Maintenant, on va ping www.google.com depuis tous les guests.

Depuis guest 1 : 

```
guest1> ping www.google.com
www.google.com resolved to 216.58.198.196
84 bytes from 216.58.198.196 icmp_seq=1 ttl=50 time=18.285 ms
84 bytes from 216.58.198.196 icmp_seq=2 ttl=50 time=60.902 ms
84 bytes from 216.58.198.196 icmp_seq=3 ttl=50 time=40.067 ms
84 bytes from 216.58.198.196 icmp_seq=4 ttl=50 time=66.850 ms
84 bytes from 216.58.198.196 icmp_seq=5 ttl=50 time=38.341 ms
```

Depuis guest 2 : 

```
guest2> ping www.google.com
www.google.com resolved to 216.58.198.196
84 bytes from 216.58.198.196 icmp_seq=1 ttl=50 time=51.467 ms
84 bytes from 216.58.198.196 icmp_seq=2 ttl=50 time=55.033 ms
84 bytes from 216.58.198.196 icmp_seq=3 ttl=50 time=37.752 ms
84 bytes from 216.58.198.196 icmp_seq=4 ttl=50 time=50.077 ms
84 bytes from 216.58.198.196 icmp_seq=5 ttl=50 time=23.841 ms
```

Depuis guest 3 : 

```
guest3> ping www.google.com
www.google.com resolved to 216.58.198.196
84 bytes from 216.58.198.196 icmp_seq=1 ttl=50 time=70.481 ms
84 bytes from 216.58.198.196 icmp_seq=2 ttl=50 time=59.981 ms
84 bytes from 216.58.198.196 icmp_seq=3 ttl=50 time=15.341 ms
84 bytes from 216.58.198.196 icmp_seq=4 ttl=50 time=24.737 ms
84 bytes from 216.58.198.196 icmp_seq=5 ttl=50 time=62.764 ms
```

Ping www.google.com depuis router. On ne peut pas ping directement www.google.com, donc on va utiliser l'adresse ip recherché par le ping des autres vms.
Donc, on va utiliser l'ip 172.217.19.228, pour ping www.google.com : 

```
R1#ping 172.217.19.228

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 172.217.19.228, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 96/97/104 ms
```

## IV. Topologie 4 : home-made DHCP

### 2. Mise en place

### B. Setup de la VM

Il faut vérifier qu'on a des port dhcp en écoute. Pour ce faire, on utilise la commande ss -lnu : 


Les ports utilisés par le DHCP, sont les ports 67 et 68. Ici, le port 67 correspond au DHCP, qui est en écoute.

Pour attribuer une IP dhcp a un guest, il faut entrer la commande "ip dhcp" sur le guest voulu. Ici, on va le faire sur le guest 1.

```
guest1> ip dhcp
DDORA IP 10.4.2.100/24 GW 10.4.2.254
```

On constate bien qu"on récupere l'ip, mais en plus on récupère l'adresse de la passerelle. Ici, l'adresse de la passerelle récuperé depuis guest 1 est 10.4.2.254.

Maintenant, on veut mettre en évidence les échanges dhcp. Pour ce faire, il faut lancer un wireshark pour capter les message 'DORA'. Pour ce faire on lance le wireshark depuis le guest ou on lance l'ip dhcp (ici le 1), et on regarde. On peut bien les voir ici : 

![](https://i.imgur.com/2T0M2qu.png)
