# TP-2 - Machine virtuelle, réseau, serveurs, routage simple

## I. Création et utilisation simples d'une VM CentOS

### 1. Configuration réseau d'une machine CentOS

#### Changer vers une autre IP statique

Pour cela on va dans : 
```
/etc/sysconfig/network-scripts
````
Et on modifie le fichier avec la commande : 
```
<sudo nano ifcfg-enp0s8>
```

| Name   | ip           | MAC               | fonction |
| ------ | ------------ | ----------------- | -------- |
| lo     | 127.0.0.1/8  | 00:00:00:00:00:00 |  NAT     |
| enp0s3 | 10.0.2.15/24 | 08:00:27:bf:5e:69 | Permet de communiquer avec sois même|
| enp0s8 | 10.2.1.2/24  | 08:00:27:d3:ec:02 | Permet de communiquer avec l'exterieur|

![](https://i.imgur.com/p0DkuXu.png)

On change d'ip en 192.168.1.19
Puis on verrifie si on a bien changer d'ip avec ip a
![](https://i.imgur.com/MIS5N8Q.png)
On vois bien que ca a changer en 10.2.1.3/24

![](https://i.imgur.com/PR8s0x0.png)
Depuis le pc Hôte on a ping la vm

![](https://i.imgur.com/96G5eMV.png)
scan nmap
![](https://i.imgur.com/eYT1h0U.png)
scan ss avec la commande `sudo ss -l -t -u -n -p`, on peut trouver quel programme ecoute sur quel port.
les ports ecoute 
![](https://i.imgur.com/q34GfoJ.png)

## II. Notion de ports

### 1. SSH



Avant de commencer il faut installer netstats avec 
```
sudo yum install net-tools
```
puis lancer netstat
![](https://i.imgur.com/ugysU0o.png)

Grâce à la commande netstat, on peut constater que sur le port 22 à l'ip 0.0.0.0, le port ssh est en écoute.

Avant de continuer il faut verifier si il y'a open ssh client et server installer donc on lance une installation avec cette commande :
```
sudo yum –y install openssh-server openssh-clients
```

Pour se connecter en ssh avec la machine hote, on active dans le systeme l'ecoute ssh avec la commande :

````
sudo systemectl start ssh
````
puis apres ceci on regarde si le systeme est bien actif 

avec la commande ``` sudo systemctl status sshd```
![](https://i.imgur.com/4xNWXb7.png)

puis apres on lance un cmd sur pc hote
on ecrit`ssh -p 1111 root@10.2.1.3`
![](https://i.imgur.com/7yvDvai.png)
et on obtient connection timed out 
Donc on va chercher a ouvrir le port correspondant au firewall.
Pour cela, on utilise la commande :
```
firewall-cmd
```
donc on ajoute le port 7265 sur lequel on a mit notre connection ssh 
![](https://i.imgur.com/KuZFKaE.png)


puis on reload et confirme les modifications

#### B. Netcat


On cherche a créer un chat privé. Pour cela, on va connecter la vm avec le pc hôte. 
On ouvre d'abord un nouveau port comme fait precédemment.
Ensuite, on connecte en ssh la vm avec le pc hote sur un premier terminal, puis on entre la commande ````nc -l -p 1112 ````. Cette commande va entrer en connexion avec le terminal du pc hôte.
Sur un deuxieme terminal, on connecte le pc hôte avec la vm, en utilisant la commande ````ncat 10.2.1.2 ````.
On a donc un chat privé entre les 2 terminaux.
Ensuite, dans un troisieme terminal on entre la commande ````ss````. On peut bien voir le connexion avec netcat entre la vm et le pc hote :
![](https://i.imgur.com/GeW4r3M.png)

### 3. Wireshark

![](https://i.imgur.com/waGnGiE.png)

On peut constater trois messages :

[SYNC] --> Demande de synchronisation
[SYNC, ACK] --> Demande d'acceptation
[ACK] --> Validation de l'acceptation


## III. Routage statique

### 2. Configuration du routage
#### A. PC1 
Ping du PC1 vers le host-only du PC2
![](https://i.imgur.com/i5ofrlZ.png)
reception sur pc 2
![](https://i.imgur.com/uGO6ayg.png)

#### B. PC2
Ping du PC2 vers le host-only du PC1
![](https://i.imgur.com/j0KCjIO.png)

#### C. VM1 
![](https://i.imgur.com/p60qhyr.png)



Connexion client de la VM2 sur le netcat de la VM1 avec des messages de test :

![](https://i.imgur.com/Aroklhq.png)


### 3. Configuration des noms de domaine

Nom de domaine 
![](https://i.imgur.com/dEUMcC3.png)
![](https://i.imgur.com/S3EOpfX.png)
![](https://i.imgur.com/0Ki0tRu.png)

