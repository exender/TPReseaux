
# TP6

# Maîtrise de poste

## OS hôte

## Host OS

On peut connaitre toutes c'est infos grâce a la commande ``msinfo32``

Nom de la machine: DESKTOP-5BM3SUL

OS et version : Windows 10 Famille

architecture processeur (32-bit, 64-bit, ARM, etc) : Systemes d'exploitation 64 bits processeur 64 bits , Version de l'ARM 1903 , 

modèle du processeur : Intel(R) Core(TM) i7-8750H CPU @ 2.20GHz, 2208 MHz, 6 cœur(s), 12 processeur(s) logique(s)

ram: ``Get-WmiObject win32_physicalmemory | Format-Table`` Manufacturer,Banklabel,Configuredclockspeed,Devicelocator,Capacity,Serialnumber -autosize
>>
```powershell
Manufacturer Banklabel Configuredclockspeed Devicelocator    Capacity Serialnumber
------------ --------- -------------------- -------------    -------- ------------
Kingston     BANK 0                    2667 ChannelA-DIMM0 8589934592 E10BBF21
```

## Devices
J'ai pris la ref de mon proc dans les parametres mais sinon voila la commande :
On connait le nombre de coeur grace a la commande ``echo $env:NUMBER_OF_PROCESSORS ``
12

Marque et modele du processeur:  Intel(R) Core(TM) i7-8750H CPU @ 2.20GHz, 2208 MHz, 6 cœur(s), 12 processeur(s) logique(s)

Explication du nom du processeur: est composé de sa marque, Intel(R) Core(TM), le i7 et la pour indiqué un "type" de processeur (référence pour la marque et le consommateur), le premier chiffre après le i7 et pour la génération du processeur, les 3 chiffres après sont les SKU (Stock Keeping Unit) c'est à dire le numéro du modèle, la lettre H veut dire Haswell qui est la microarchitecture x86-64

Ligne de commande pour connaitre le : ``Get-PnpDevice``

Modele de son touchpad:

Modele des enceintes intégrées:  AudioEndpoint   Haut-parleurs (Realtek High Definition Audio)

Model de son disque dur principale: HFS128G39TND-N210A
___________________________________________________________________________

## Disque dur
-------------------------------------------------------------------------


Modele de son disque dur principal: 
```powershell Number FriendlyName         SerialNumber      MediaType CanPool OperationalStatus 
HealthStatus Usage            Size
------ ------------         ------------      --------- ------- ----------------- ------------ -----            ----
0      HFS128G39TND-N210A   ES88N73651010920N SSD       False   OK                Healthy      Auto-Select 119.24 GB
```

``Get-PhysicalDisk``
nombre de disque
 
```powershell
Number FriendlyName         SerialNumber      MediaType CanPool OperationalStatus HealthStatus Usage            Size
------ ------------         ------------      --------- ------- ----------------- ------------ -----            ----
0      HFS128G39TND-N210A   ES88N73651010920N SSD       False   OK                Healthy      Auto-Select 119.24 GB

1      HGST HTS721010A9E630 JR1004BNK44YUM    HDD       False   OK                Healthy      Auto-Select 931.51 GB
```
 
 Partition
 ``Get-Partition``

```powershell
   DiskPath : \\?\scsi#disk&ven_hfs128g3&prod_9tnd-n210a#4&1665b188&0&000100#{53f56307-b6bf-11d0-94f2-00a0c91efb8b}

PartitionNumber  DriveLetter Offset                                        Size Type
---------------  ----------- ------                                        ---- ----
1                            1048576                                     100 MB System cette partition le boot windows

2                            105906176                                    16 MB Reserved

3                C           122683392                                118.12 GB Basic sert a stocker des fichiers des utilisateurs

4                            126953193472                                  1 GB Recovery dossier de recuperation en cas de probleme


   DiskPath : \\?\scsi#disk&ven_hgst&prod_hts721010a9e630#4&1665b188&0&000400#{53f56307-b6bf-11d0-94f2-00a0c91efb8b}

PartitionNumber  DriveLetter Offset                                        Size Type
---------------  ----------- ------                                        ---- ----
1                D           1048576                                  882.68 GB Basic -HHD Libre sert a stocker des fichier 

2                            947775340544                                513 MB System -Grub linux sert a boot sous Ubuntu ou W10

3                            948313260032                              48.33 GB Unknown -DualBoot Linux systeme linux
```

---------------------------------------------------------------------------

## Network

----------------------------------------------------------------------------
Pour lister les cartes reseaux : ``Get-NetAdapter | fl Name, InterfaceIndex``

```powershell
Name           : VirtualBox Host-Only Network #2 Carte crée pour virtualbox
InterfaceIndex : 18

Name           : Ethernet carte utiliser par notre prise ethernet 
InterfaceIndex : 11

Name           : Wi-Fi  carte utiliser pour le wifi par notre pc 
InterfaceIndex : 3
```
Quel app ecoute sur quel port:

``netstat -ano``
```poweshell
Connexions actives

  Proto  Adresse locale         Adresse distante       État
  TCP    0.0.0.0:80             0.0.0.0:0              LISTENING       4
  TCP    0.0.0.0:135            0.0.0.0:0              LISTENING       1172
  TCP    0.0.0.0:445            0.0.0.0:0              LISTENING       4
  TCP    0.0.0.0:1337           0.0.0.0:0              LISTENING       4608
  TCP    0.0.0.0:2869           0.0.0.0:0              LISTENING       4
  TCP    0.0.0.0:5040           0.0.0.0:0              LISTENING       10040
  TCP    0.0.0.0:5357           0.0.0.0:0              LISTENING       4
  TCP    0.0.0.0:5426           0.0.0.0:0              LISTENING       4
  TCP    0.0.0.0:7680           0.0.0.0:0              LISTENING       4976
  TCP    0.0.0.0:49664          0.0.0.0:0              LISTENING       920
  TCP    0.0.0.0:49665          0.0.0.0:0              LISTENING       828
  TCP    0.0.0.0:49666          0.0.0.0:0              LISTENING       1824
  TCP    0.0.0.0:49667          0.0.0.0:0              LISTENING       1752
  TCP    0.0.0.0:49668          0.0.0.0:0              LISTENING       2820
  TCP    0.0.0.0:49669          0.0.0.0:0              LISTENING       3728
  TCP    0.0.0.0:49686          0.0.0.0:0              LISTENING       900
  TCP    0.0.0.0:54235          0.0.0.0:0              LISTENING       4
  TCP    0.0.0.0:54236          0.0.0.0:0              LISTENING       4
  TCP    10.2.1.1:139           0.0.0.0:0              LISTENING       4
  TCP    127.0.0.1:3213         0.0.0.0:0              LISTENING       4628
  TCP    127.0.0.1:6463         0.0.0.0:0              LISTENING       24224
  TCP    127.0.0.1:8384         0.0.0.0:0              LISTENING       7796
  TCP    127.0.0.1:8384         127.0.0.1:27855        TIME_WAIT       0
  TCP    127.0.0.1:8384         127.0.0.1:27878        ESTABLISHED     7796
  TCP    127.0.0.1:8384         127.0.0.1:55403        ESTABLISHED     7796
  TCP    127.0.0.1:8386         0.0.0.0:0              LISTENING       15584
  TCP    127.0.0.1:8386         127.0.0.1:55402        ESTABLISHED     15584
  TCP    127.0.0.1:22000        0.0.0.0:0              LISTENING       7796
  TCP    127.0.0.1:22000        127.0.0.1:55408        ESTABLISHED     7796
  TCP    127.0.0.1:22001        0.0.0.0:0              LISTENING       15584
  TCP    127.0.0.1:25739        127.0.0.1:25740        ESTABLISHED     10984
  TCP    127.0.0.1:25740        127.0.0.1:25739        ESTABLISHED     10984
  TCP    127.0.0.1:25742        127.0.0.1:25743        ESTABLISHED     17680
  TCP    127.0.0.1:25743        127.0.0.1:25742        ESTABLISHED     17680
  TCP    127.0.0.1:25746        127.0.0.1:25747        ESTABLISHED     18280
  TCP    127.0.0.1:25747        127.0.0.1:25746        ESTABLISHED     18280
  TCP    127.0.0.1:25760        127.0.0.1:25761        ESTABLISHED     4668
  TCP    127.0.0.1:25761        127.0.0.1:25760        ESTABLISHED     4668
  TCP    127.0.0.1:25810        127.0.0.1:25811        ESTABLISHED     12112
  TCP    127.0.0.1:25811        127.0.0.1:25810        ESTABLISHED     12112
  TCP    127.0.0.1:26041        127.0.0.1:26042        ESTABLISHED     20332
  TCP    127.0.0.1:26042        127.0.0.1:26041        ESTABLISHED     20332
  TCP    127.0.0.1:27114        127.0.0.1:27115        ESTABLISHED     9324
  TCP    127.0.0.1:27115        127.0.0.1:27114        ESTABLISHED     9324
  TCP    127.0.0.1:27475        127.0.0.1:60518        ESTABLISHED     12724
  TCP    127.0.0.1:27823        127.0.0.1:55400        ESTABLISHED     10984
  TCP    127.0.0.1:27824        127.0.0.1:55400        ESTABLISHED     14712
  TCP    127.0.0.1:27855        127.0.0.1:8384         TIME_WAIT       0
  TCP    127.0.0.1:27878        127.0.0.1:8384         ESTABLISHED     624
  TCP    127.0.0.1:50001        0.0.0.0:0              LISTENING       4
  TCP    127.0.0.1:55170        127.0.0.1:65001        ESTABLISHED     4732
  TCP    127.0.0.1:55256        0.0.0.0:0              LISTENING       14368
  TCP    127.0.0.1:55256        127.0.0.1:55385        ESTABLISHED     14368
  TCP    127.0.0.1:55324        0.0.0.0:0              LISTENING       14200
  TCP    127.0.0.1:55324        127.0.0.1:55338        ESTABLISHED     14200
  TCP    127.0.0.1:55324        127.0.0.1:55470        ESTABLISHED     14200
  TCP    127.0.0.1:55338        127.0.0.1:55324        ESTABLISHED     23464
  TCP    127.0.0.1:55385        127.0.0.1:55256        ESTABLISHED     17364
  TCP    127.0.0.1:55400        0.0.0.0:0              LISTENING       23464
  TCP    127.0.0.1:55400        127.0.0.1:27823        ESTABLISHED     23464
  TCP    127.0.0.1:55400        127.0.0.1:27824        ESTABLISHED     23464
  TCP    127.0.0.1:55402        127.0.0.1:8386         ESTABLISHED     23464
  TCP    127.0.0.1:55403        127.0.0.1:8384         ESTABLISHED     23464
  TCP    127.0.0.1:55408        127.0.0.1:22000        ESTABLISHED     15584
  TCP    127.0.0.1:55470        127.0.0.1:55324        ESTABLISHED     23464
  TCP    127.0.0.1:60518        0.0.0.0:0              LISTENING       7044
  TCP    127.0.0.1:60518        127.0.0.1:27475        ESTABLISHED     7044
  TCP    127.0.0.1:65001        0.0.0.0:0              LISTENING       4732
  TCP    127.0.0.1:65001        127.0.0.1:55170        ESTABLISHED     4732
  TCP    192.168.1.55:139       0.0.0.0:0              LISTENING       4
  TCP    192.168.1.55:25422     35.186.224.47:443      ESTABLISHED     5740
  TCP    192.168.1.55:25753     35.161.236.240:443     ESTABLISHED     10984
  TCP    192.168.1.55:25950     40.67.254.36:443       ESTABLISHED     4456
  TCP    192.168.1.55:26104     54.92.108.83:443       ESTABLISHED     10984
  TCP    192.168.1.55:26553     162.159.135.234:443    ESTABLISHED     5740
  TCP    192.168.1.55:26790     18.211.21.156:443      ESTABLISHED     4516
  TCP    192.168.1.55:27497     140.82.114.26:443      ESTABLISHED     12724
  TCP    192.168.1.55:27815     35.155.206.219:443     ESTABLISHED     14200
  TCP    192.168.1.55:27818     54.92.108.83:443       ESTABLISHED     10984
  TCP    192.168.1.55:27822     216.58.213.142:443     ESTABLISHED     10984
  TCP    192.168.1.55:27830     185.199.108.154:443    ESTABLISHED     10984
  TCP    192.168.1.55:27831     151.101.120.133:443    ESTABLISHED     10984
  TCP    192.168.1.55:27832     151.101.120.133:443    ESTABLISHED     10984
  TCP    192.168.1.55:27836     52.205.230.224:443     TIME_WAIT       0
  TCP    192.168.1.55:27837     216.58.204.142:443     ESTABLISHED     10984
  TCP    192.168.1.55:27838     216.58.213.142:443     ESTABLISHED     10984
  TCP    192.168.1.55:27853     140.82.113.25:443      ESTABLISHED     10984
  TCP    192.168.1.55:27854     151.101.120.133:443    ESTABLISHED     10984
  TCP    192.168.1.55:27858     52.216.179.27:443      CLOSE_WAIT      12724
  TCP    192.168.1.55:27859     52.216.179.27:443      CLOSE_WAIT      12724
  TCP    192.168.1.55:27860     151.101.122.214:443    ESTABLISHED     12724
  TCP    192.168.1.55:27863     51.144.164.215:443     TIME_WAIT       0
  TCP    192.168.1.55:27870     13.107.6.175:443       TIME_WAIT       0
  TCP    192.168.1.55:27872     52.54.178.155:443      ESTABLISHED     10984
  TCP    192.168.1.55:27873     52.54.178.155:443      ESTABLISHED     10984
  TCP    192.168.1.55:27876     52.157.234.37:443      ESTABLISHED     2616
  TCP    192.168.1.55:27877     162.159.135.233:443    ESTABLISHED     5740
  TCP    192.168.1.55:55312     18.211.21.156:443      ESTABLISHED     17844
  TCP    192.168.1.55:55356     192.168.1.67:443       ESTABLISHED     14200
  TCP    192.168.1.55:55723     162.159.137.234:443    ESTABLISHED     5740
  TCP    192.168.56.1:139       0.0.0.0:0              LISTENING       4
  TCP    [::]:80                [::]:0                 LISTENING       4
  TCP    [::]:135               [::]:0                 LISTENING       1172
  TCP    [::]:445               [::]:0                 LISTENING       4
  TCP    [::]:1337              [::]:0                 LISTENING       4608
  TCP    [::]:2869              [::]:0                 LISTENING       4
  TCP    [::]:5357              [::]:0                 LISTENING       4
  TCP    [::]:5426              [::]:0                 LISTENING       4
  TCP    [::]:7680              [::]:0                 LISTENING       4976
  TCP    [::]:49664             [::]:0                 LISTENING       920
  TCP    [::]:49665             [::]:0                 LISTENING       828
  TCP    [::]:49666             [::]:0                 LISTENING       1824
  TCP    [::]:49667             [::]:0                 LISTENING       1752
  TCP    [::]:49668             [::]:0                 LISTENING       2820
  TCP    [::]:49669             [::]:0                 LISTENING       3728
  TCP    [::]:49686             [::]:0                 LISTENING       900
  TCP    [::]:54235             [::]:0                 LISTENING       4
  TCP    [::]:54236             [::]:0                 LISTENING       4
  TCP    [::1]:5426             [::1]:55200            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55208            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55211            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55214            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55291            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55422            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55426            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55429            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55434            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55435            ESTABLISHED     4
  TCP    [::1]:5426             [::1]:55439            ESTABLISHED     4
  TCP    [::1]:50012            [::]:0                 LISTENING       4828
  TCP    [::1]:55200            [::1]:5426             ESTABLISHED     11428
  TCP    [::1]:55208            [::1]:5426             ESTABLISHED     11428
  TCP    [::1]:55211            [::1]:5426             ESTABLISHED     11428
  TCP    [::1]:55214            [::1]:5426             ESTABLISHED     11428
  TCP    [::1]:55291            [::1]:5426             ESTABLISHED     6836
  TCP    [::1]:55422            [::1]:5426             ESTABLISHED     6836
  TCP    [::1]:55426            [::1]:5426             ESTABLISHED     6836
  TCP    [::1]:55429            [::1]:5426             ESTABLISHED     6836
  TCP    [::1]:55434            [::1]:5426             ESTABLISHED     6836
  TCP    [::1]:55435            [::1]:5426             ESTABLISHED     6836
  TCP    [::1]:55439            [::1]:5426             ESTABLISHED     6836
  TCP    [2a01:cb19:616:8f00:2113:5354:edd2:eab7]:27504  [2a00:1450:400c:c08::bc]:5228  ESTABLISHED     12724
  TCP    [2a01:cb19:616:8f00:2113:5354:edd2:eab7]:27857  [2a01:111:f100:3000::a83e:19f6]:443  ESTABLISHED     4548
  TCP    [2a01:cb19:616:8f00:2113:5354:edd2:eab7]:27869  [2620:1ec:a92::175]:443  TIME_WAIT       0
  UDP    0.0.0.0:500            *:*                                    4484
  UDP    0.0.0.0:3702           *:*                                    8700
  UDP    0.0.0.0:3702           *:*                                    8700
  UDP    0.0.0.0:3702           *:*                                    5264
  UDP    0.0.0.0:3702           *:*                                    5264
  UDP    0.0.0.0:4500           *:*                                    4484
  UDP    0.0.0.0:5050           *:*                                    10040
  UDP    0.0.0.0:5353           *:*                                    13948
  UDP    0.0.0.0:5353           *:*                                    13948
  UDP    0.0.0.0:5353           *:*                                    13948
  UDP    0.0.0.0:5353           *:*                                    13948
  UDP    0.0.0.0:5353           *:*                                    13948
  UDP    0.0.0.0:5353           *:*                                    2364
  UDP    0.0.0.0:5353           *:*                                    13948
  UDP    0.0.0.0:5355           *:*                                    2364
  UDP    0.0.0.0:52522          *:*                                    4732
  UDP    0.0.0.0:54831          *:*                                    24224
  UDP    0.0.0.0:55179          *:*                                    5264
  UDP    0.0.0.0:62448          *:*                                    11108
  UDP    0.0.0.0:64673          *:*                                    8700
  UDP    10.2.1.1:137           *:*                                    4
  UDP    10.2.1.1:138           *:*                                    4
  UDP    10.2.1.1:1900          *:*                                    6524
  UDP    10.2.1.1:2177          *:*                                    22696
  UDP    10.2.1.1:5353          *:*                                    4732
  UDP    10.2.1.1:61865         *:*                                    6524
  UDP    127.0.0.1:1900         *:*                                    6524
  UDP    127.0.0.1:10030        *:*                                    14368
  UDP    127.0.0.1:10031        *:*                                    23488
  UDP    127.0.0.1:55172        *:*                                    4492
  UDP    127.0.0.1:61867        *:*                                    6524
  UDP    127.0.0.1:64859        *:*                                    5104
  UDP    192.168.1.55:137       *:*                                    4
  UDP    192.168.1.55:138       *:*                                    4
  UDP    192.168.1.55:1900      *:*                                    6524
  UDP    192.168.1.55:2177      *:*                                    22696
  UDP    192.168.1.55:5353      *:*                                    4732
  UDP    192.168.1.55:61866     *:*                                    6524
  UDP    192.168.56.1:137       *:*                                    4
  UDP    192.168.56.1:138       *:*                                    4
  UDP    192.168.56.1:1900      *:*                                    6524
  UDP    192.168.56.1:2177      *:*                                    22696
  UDP    192.168.56.1:5353      *:*                                    4732
  UDP    192.168.56.1:61864     *:*                                    6524
  UDP    [::]:500               *:*                                    4484
  UDP    [::]:3702              *:*                                    5264
  UDP    [::]:3702              *:*                                    8700
  UDP    [::]:3702              *:*                                    8700
  UDP    [::]:3702              *:*                                    5264
  UDP    [::]:4500              *:*                                    4484
  UDP    [::]:5353              *:*                                    13948
  UDP    [::]:5353              *:*                                    13948
  UDP    [::]:5353              *:*                                    13948
  UDP    [::]:5353              *:*                                    2364
  UDP    [::]:5355              *:*                                    2364
  UDP    [::]:52523             *:*                                    4732
  UDP    [::]:55180             *:*                                    5264
  UDP    [::]:62448             *:*                                    11108
  UDP    [::]:64674             *:*                                    8700
  UDP    [::1]:1900             *:*                                    6524
  UDP    [::1]:5353             *:*                                    4732
  UDP    [::1]:61863            *:*                                    6524
  UDP    [2a01:cb19:616:8f00:14b3:b401:fc37:aec0]:2177  *:*                                    22696
  UDP    [2a01:cb19:616:8f00:2113:5354:edd2:eab7]:2177  *:*                                    22696
  UDP    [fe80::14b3:b401:fc37:aec0%3]:1900  *:*                                    6524
  UDP    [fe80::14b3:b401:fc37:aec0%3]:2177  *:*                                    22696
  UDP    [fe80::14b3:b401:fc37:aec0%3]:61862  *:*                                    6524
  UDP    [fe80::3d27:2f72:e101:9c45%16]:1900  *:*                                    6524
  UDP    [fe80::3d27:2f72:e101:9c45%16]:2177  *:*                                    22696
  UDP    [fe80::3d27:2f72:e101:9c45%16]:61860  *:*                                    6524
  UDP    [fe80::7858:68c6:9986:f45e%18]:1900  *:*                                    6524
  UDP    [fe80::7858:68c6:9986:f45e%18]:2177  *:*                                    22696
  UDP    [fe80::7858:68c6:9986:f45e%18]:61861  *:*                                    6524
  ```
  
  
  Pour savoir quel app ecoute sur quel port:
  
  ``Get-Process | Where-Object {$_.mainWindowTitle} | Format-Table Id, Name, mainWindowtitle -AutoSize``

  ```powershell Id Name                                                           MainWindowTitle
   -- ----                                                           ---------------
20688 ApplicationFrameHost                                           Paramètres

 8852 Discord                                                        #📑-cour - Discord
 
14712 explorer                                                       TP6

10984 firefox                                                        1 · master · it4 / b1-mastering-host · GitLab - Mozilla Firefox

22832 MicrosoftEdge                                                  Microsoft Edge

17816 MicrosoftEdgeCP                                                Microsoft Edge

 9580 powershell                                                     Windows PowerShell
 
 6708 SystemSettings                                                 CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US
 
 236 WindowsInternal.ComposableShell.Experiences.TextInput.InputApp Microsoft Text Input Application
  ```
 ---------------------------------------------------------------------------
 User
 ------------------------------------------------------------------------
 Pour lister les differant user: ``net user``
 
```powershell comptes d’utilisateurs de \\DESKTOP-5BM3SUL

-------------------------------------------------------------------------------
Administrateur           bapti                    DefaultAccount
Invité                   WDAGUtilityAccount       YNOV01
YNOV02                   YNOV03                   YNOV04
YNOV05                   YNOV06                   YNOV07
YNOV08                   YNOV09                   YNOV10
YNOV11                   YNOV12                   YNOV13
YNOV14                   YNOV15                   YNOV16
YNOV17                   YNOV18                   YNOV19
```

``Get-LocalUser`` pour connaitre quel session est la session admin

```powershell Name               Enabled Description
----               ------- -----------
Administrateur     False   Compte d’utilisateur d’administration
bapti              True
DefaultAccount     False   Compte utilisateur géré par le système.
Invité             False   Compte d’utilisateur invité
```
-----------------------------------------------------------------------------
Processus
--------------------------------------------------------------------------
 Pour connaitre tous les processus en arriere plan ``tasklist``
 
 J'ai pas tous mit sinon ca serai imbuvable

```powershell Nom de l’image                 PID Nom de la sessio Numéro de s Utilisation
========================= ======== ================ =========== ============
System Idle Process              0 Services                   0         8 Ko 

System                           4 Services                   0        44 Ko 

Registry                       144 Services                   0    53 972 Ko

smss.exe                       496 Services                   0       472 Ko

csrss.exe                      724 Services                   0     3 688 Ko 

wininit.exe                    828 Services                   0     4 280 Ko

services.exe                   900 Services                   0     8 048 Ko

lsass.exe                      920 Services                   0    16 508 Ko

svchost.exe                    620 Services                   0     1 836 Ko

svchost.exe                    944 Services                   0    27 716 Ko

fontdrvhost.exe               1032 Services                   0     1 080 Ko 

WUDFHost.exe                  1048 Services                   0     3 536 Ko

svchost.exe                   1172 Services                   0    16 184 Ko

svchost.exe                   1236 Services                   0     8 020 Ko

svchost.exe                   1412 Services                   0     6 292 Ko

svchost.exe                   1496 Services                   0     7 788 Ko

svchost.exe                   1504 Services                   0     8 532 Ko

svchost.exe                   1576 Services                   0     3 504 Ko

svchost.exe                   1680 Services                   0     6 236 Ko

svchost.exe                   1696 Services                   0     3 436 Ko

svchost.exe                   1752 Services                   0    10 300 Ko

svchost.exe                   1804 Services                   0     8 488 Ko

svchost.exe                   1816 Services                   0    12 348 Ko

svchost.exe                   1824 Services                   0    11 756 Ko

svchost.exe                   2032 Services                   0     7 784 Ko

svchost.exe                   2044 Services                   0     9 420 Ko

svchost.exe                   2084 Services                   0     4 456 Ko

NVDisplay.Container.exe       2092 Services                   0    11 568 Ko

svchost.exe                   2104 Services                   0     5 264 Ko

svchost.exe                   2180 Services                   0     9 092 Ko

svchost.exe                   2312 Services                   0    15 360 Ko

svchost.exe                   2344 Services                   0    10 292 Ko

svchost.exe                   2356 Services                   0     5 044 Ko

svchost.exe                   2364 Services                   0     6 564 Ko

svchost.exe                   2544 Services                   0    10 444 Ko

svchost.exe                   2556 Services                   0     3 152 Ko

svchost.exe                   2564 Services                   0     4 884 Ko

svchost.exe                   2572 Services                   0     4 780 Ko

svchost.exe                   2596 Services                   0     6 956 Ko

Memory Compression            2756 Services                   0   213 056 Ko

svchost.exe                   2812 Services                   0     5 600 Ko

svchost.exe                   2820 Services                   0     5 588 Ko

svchost.exe                   2852 Services                   0     7 108 Ko

igfxCUIService.exe            2904 Services                   0     5 280 Ko

svchost.exe                   2972 Services                   0     5 392 Ko

svchost.exe                   2980 Services                   0     6 904 Ko

svchost.exe                   2988 Services                   0     5 204 Ko

svchost.exe                   3188 Services                   0    11 988 Ko

svchost.exe                   3296 Services                   0     6 804 Ko

svchost.exe                   3304 Services                   0     4 224 Ko

svchost.exe                   3484 Services                   0    13 416 Ko

svchost.exe                   3540 Services                   0    10 992 Ko
```

Ce que j'ai retenue pour les expliquer :

smss.exe  Gestionnaire de Session du Sous-Système gere toutes les app au demarages

csrss.exe  Sert à gérer les fenêtres et les éléments graphiques de Windows. 

wininit.exe   initializer de windows au demarage de la machine programme qui ce lance en premier et lance tous les autres programmes

lsass.exe  sert a l'identification des utilisateurs 

fontdrvhost.exe  est un composant logiciel de Windows font driver management qui permet de gerer les fenetre et les elements graphiques

----------------------------------------------------------------------------
Scripting
----------------------------------------------------------------------------
lien des scripts

Script 1:

Script 2: https://github.com/exender/TPReseaux/blob/master/TP6/script_2.bat
