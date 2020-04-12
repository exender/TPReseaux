TP 5 - Une "vraie" topologie ?



I. Toplogie 1 - intro VLAN



2. Setup clients

Les pingz

admins :

PC1> ping 10.5.10.12  

84 bytes from 10.5.10.12 icmp_seq=1 ttl=64 time=0.807 ms  

84 bytes from 10.5.10.12 icmp_seq=2 ttl=64 time=1.441 ms

guests :

PC3> ping 10.5.20.12  

84 bytes from 10.5.20.12 icmp_seq=1 ttl=64 time=0.624ms  

84 bytes from 10.5.20.12 icmp_seq=2 ttl=64 time=1.326ms



3. Setup VLANs

On setup les 2 Vlan:

gns3vm#conf t  

Enter configuration commands, one per line. End with CNTL/Z.  

gns3vm(config)#vlan 10  

gns3vm(config-vlan)#name admins  

gns3vm#conf t  

Enter configuration commands, one per line. End with CNTL/Z.  

gns3vm(config)#vlan 20  

gns3vm(config-vlan)#name guests

Maintenant faut setup les VLAN sur les interfaces des PC admins et guest et le trunk sur le port inter-switch 

Ici sur le switch IOU1 :

gns3vm(config)#interface Ethernet 0/1

gns3vm(config-if)#switchport mode access

gns3vm(config-if)#switchport access vlan 10

gns3vm(config-if)#exit

gns3vm(config)#interface Ethernet 0/2

gns3vm(config-if)#switchport mode access 

gns3vm(config-if)#switchport access vlan 10

gns3vm(config-if)#exit

gns3vm(config)#interface Ethernet 0/0

gns3vm(config-if)#switchport mode access

gns3vm(config-if)#switchport trunk encapsulation dot1q 

gns3vm(config-if)#switchport mode trunk 

gns3vm(config)#interface Ethernet 0/1

gns3vm(config-if)#switchport mode access

gns3vm(config-if)#switchport access vlan 20

gns3vm(config-if)#exit

gns3vm(config)#interface Ethernet 0/2

gns3vm(config-if)#switchport mode access 

gns3vm(config-if)#switchport access vlan 20

gns3vm(config-if)#exit

gns3vm(config)#interface Ethernet 0/0

gns3vm(config-if)#switchport mode access

gns3vm(config-if)#switchport trunk encapsulation dot1q 

gns3vm(config-if)#switchport mode trunk 

On va test si ça marche en pingant les machines dans admins et guests :

PC1> ping 10.5.10.12  

84 bytes from 10.5.10.12 icmp_seq=1 ttl=64 time=1.016 ms  

84 bytes from 10.5.10.12 icmp_seq=2 ttl=64 time=1.214 ms

PC3> ping 10.5.20.12

84 bytes from 10.5.20.12 icmp_seq=1 ttl=64 time=1.242 ms

Normalement si un guests prend une IP dans le réseau en admins, par exemple 10.5.10.13, ça marche pas : PC3 :

PC3> ip 10.5.10.13  

Checking for duplicate address...  

PC1 : 10.5.10.13 255.255.255.0

PC1> ping 10.5.10.13

host (10.5.10.13) not reachable



II. Topologie 2 - VLAN, sous-interface, NAT



1. Mise en place de la topologie

Topo de où on en est 

![](https://i.imgur.com/DLsH7LG.png)


On configure toutes les IP des machines :

PC1> ping 10.5.10.12

84 bytes from 10.5.10.12 icmp_seq=1 ttl=64 time=1.332 ms

84 bytes from 10.5.10.12 icmp_seq=2 ttl=64 time=0.995 ms

PC3> ping 10.5.10.13

84 bytes from 10.5.10.13 icmp_seq=1 ttl=64 time=1.031 ms

84 bytes from 10.5.10.13 icmp_seq=2 ttl=64 time=1.133 ms

PC2> ping 10.5.20.12

84 bytes from 10.5.20.12 icmp_seq=1 ttl=64 time=1.308 ms

84 bytes from 10.5.20.12 icmp_seq=2 ttl=64 time=1.189 ms

PC4> ping 10.5.20.13

84 bytes from 10.5.20.13 icmp_seq=1 ttl=64 time=1.140 ms

84 bytes from 10.5.20.13 icmp_seq=2 ttl=64 time=1.624 ms



Maintenant on met les VLAN 



Je mets l'adresse IP 10.5.10.14 au PC6, il ping po (c’est relou) :

PC6> ping 10.5.10.11  

^Chost (10.5.10.11) not reachable  

  

PC6> ping 10.5.10.12  

host (10.5.10.12) not reachable  

  

PC6> ping 10.5.20.12  

No gateway found  

  

PC6> ping 10.5.20.13  

No gateway found

Bon maintenant on config le routeur 

R1(config)#interface fastEthernet 0/0.10

R1(config-subif)#encapsulation dot1Q 10

R1(config-subif)#ip address 10.5.10.254 255.255.255.0

R1(config-subif)#exit

R1(config)#interface fastEthernet 0/0

R1(config)#no shut

R1(config-subif)#exit

R1(config)#interface fastEthernet 0/0.20

R1(config-subif)#encapsulation dot1Q 20

R1(config-subif)#ip address 10.5.20.254 255.255.255.0

Sur le switch du mileu IOU2 :

gns3vm(config)#interface Ethernet 1/0

gns3vm(config-if)#switchport mode trunk 

gns3vm(config-if)#switchport trunk encapsulation dot1q

gns3vm(config-if)#switchport trunk allowed vlan 10,20

On ping les passerelles des deux réseaux respectifs :

PC1> ping 10.5.10.254

84 bytes from 10.5.10.254 icmp_seq=1 ttl=255 time=6.928 ms

84 bytes from 10.5.10.254 icmp_seq=2 ttl=255 time=10.609 ms

PC2> ping 10.5.20.254

84 bytes from 10.5.20.254 icmp_seq=1 ttl=255 time=9.864 ms

84 bytes from 10.5.20.254 icmp_seq=2 ttl=255 time=5.576 ms

Ca fonctionne.



5. NAT

On configure la NAT c'est parti procédure standard

R1(config)#interface fastEthernet 0/0.10

R1(config-if)#ip nat inside

R1(config-if)#exit

R1(config)#interface fastEthernet 0/0.20

R1(config-if)#ip nat inside

R1(config)#interface fastEthernet 0/1

R1(config-if)#ip nat outside

R1(config-if)#exit

R1(config)#access-list 1 permit any

R1(config)#ip nat inside source list 1 interface fastEthernet 0/1 overload

On teste un ping vers google 

PC1> ping 8.8.8.8  

*10.5.10.254 icmp_seq=1 ttl=255 time=54.009 ms (ICMP type:3, code:1, Destination host unreachable)  

*10.5.10.254 icmp_seq=2 ttl=255 time=3.532 ms (ICMP type:3, code:1, Destination host unreachable)  

*10.5.10.254 icmp_seq=3 ttl=255 time=12.028 ms (ICMP type:3, code:1, Destination host unreachable)

PC2> ping 8.8.8.8  

*10.5.20.254 icmp_seq=1 ttl=255 time=9.092 ms (ICMP type:3, code:1, Destination host unreachable)  

*10.5.20.254 icmp_seq=2 ttl=255 time=8.458 ms (ICMP type:3, code:1, Destination host unreachable)



3. Serveur DHCP

Tout le monde peut ping tout le monde. PC1 vers DNS :

PC1> ping 10.5.30.11  

84 bytes from 10.5.30.11 icmp_seq=1 ttl=63 time=21.563 ms  

84 bytes from 10.5.30.11 icmp_seq=2 ttl=63 time=16.160 ms

DHCP vers Web : 

![](https://i.imgur.com/vjT4iNL.png)


 Là c'est juste deux exemples. Bon on va reconfig le DHCP. On reprend la machine utilisée dans le TP4 et on change le subnet et les range des IP : 

![](https://i.imgur.com/LQVGcgd.png)


PC6> ip dhcp  

DDORA IP 10.5.20.100/24 GW 10.5.20.254

DHCP RESTART





4. Serveur Web

On télécharge le paquet epel-release avec sudo yum install epel-release et nginx. Une fois ceci fait, qui dit serveur web dit port HTTP, donc on va autoriser le port 80 sur la machine via la commande sudo firewall-cmd --add-port=80/tcp --permanent et sudo firewall-cmd --reload. Enfin, on tape un petit systemctl start nginx et le serveur est lancé. Deux trucs pour tester le fonctionnement : un petit curl sur le serveur lui-même nous renvoie ça : 

![](https://i.imgur.com/w3eVLBs.png)


Un curl via DNS donne la même chose



5. Serveur DNS

Il est temps de créer notre propre serveur DNS. D'abord, on installe ce qu'il faut avec sudo yum install bind bind-utils. Maintenant faut le configurer. Tout se fait dans le dossier /var/named. Par contre on y a pas accès, il faut le chmod 755 /var/named. On va créer notre fichier tp5.b1.db et on va y ajouter nos noms de domaines et leur IP respective.



DHCP snooping

Bon bah ça c'est très simple. Le DHCP Snooping permet de ne pas se manger des IP venant d'un serveur DHCP non autorisé. Il filtre les requêtes "DHCP OFFER" pour éviter qu'un serveur DHCP n'ayant absolument rien à faire là réussisse à donner des IP aux PC du réseau et tout faire passer par lui. Ca évite les types d'attaque comme les MITM en faisant en sorte de ne faire confiance qu'à un seul serveur DHCP dans la binding database.

Pour activer le DHCP Snooping sur un Switch Cisco, on fait conf t, ip dhcp snooping. Si on veut l'activer dans un VLAN particulier, on rajoute ip dhcp snooping vlan {vlan}.

Si on veut autoriser les requêtes DHCP sur une interface particulière, on peut utiliser ip dhcp snooping trust dans la conf de l'interface. On peut également limiter le nombre ip dhcp snooping limit rate {nombre}.



IP Source Guard

L'IP Source Guard et le DHCP Snooping sont étroitement liés. Les deux visent à renforcer la sécurité du réseau. L'IP Source Guard est basé sur le DHCP snooping binding database et les IP source binding configurés. Il lie l'adresse MAC d'une machine à une IP. On procède comme suit pour l'activer : conf t, ip source binding {MAC} vlan {vlan} {IP} interface {int} Pour appliquer l'IP Source Guard, on utilise la commande ip verify source dans la config de l'interface. 

