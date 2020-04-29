
# TP6

# Maîtrise de poste

## OS hôte

## Host OS

On peut connaitre toutes c'est infos grâce a la commande ``msinfo32``

Nom de la machine: DESKTOP-5BM3SUL

OS et version : Windows 10 Famille

architecture processeur (32-bit, 64-bit, ARM, etc) : Systemes d'exploitation 64 bits processeur 64 bits , Version de l'ARM 1903 , 

modèle du processeur : Intel(R) Core(TM) i7-8750H CPU @ 2.20GHz, 2208 MHz, 6 cœur(s), 12 processeur(s) logique(s)

C:\Users\bapti> Get-WmiObject win32_physicalmemory | Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator,Capacity,Serialnumber -autosize
>>

Manufacturer Banklabel Configuredclockspeed Devicelocator    Capacity Serialnumber
------------ --------- -------------------- -------------    -------- ------------
Kingston     BANK 0                    2667 ChannelA-DIMM0 8589934592 E10BBF21


## Devices
J'ai pris la ref de mon proc dans les parametres mais sinon voila la commande :
On connait le nombre de coeur grace a la commande ``echo $env:NUMBER_OF_PROCESSORS ``
12

Marque et modele du processeur:  Intel(R) Core(TM) i7-8750H CPU @ 2.20GHz, 2208 MHz, 6 cœur(s), 12 processeur(s) logique(s)

Explication du nom du processeur: 

La lettre H veut dire Haswell qui est la microarchitecture x86-64

Ligne de commande pour connaitre le : Get-PnpDevice
Modele de son touchpad:
Modele des enceintes intégrées:  AudioEndpoint   Haut-parleurs (Realtek High Definition Audio)
___________________________________________________________________________

## Disque dur
-------------------------------------------------------------------------


Modele de son disque dur principal: Number FriendlyName         SerialNumber      MediaType CanPool OperationalStatus HealthStatus Usage            Size
------ ------------         ------------      --------- ------- ----------------- ------------ -----            ----
0      HFS128G39TND-N210A   ES88N73651010920N SSD       False   OK                Healthy      Auto-Select 119.24 GB


 ``Get-PhysicalDisk``

Number FriendlyName         SerialNumber      MediaType CanPool OperationalStatus HealthStatus Usage            Size
------ ------------         ------------      --------- ------- ----------------- ------------ -----            ----
0      HFS128G39TND-N210A   ES88N73651010920N SSD       False   OK                Healthy      Auto-Select 119.24 GB
1      HGST HTS721010A9E630 JR1004BNK44YUM    HDD       False   OK                Healthy      Auto-Select 931.51 GB

 
 ``Get-Partition``


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


---------------------------------------------------------------------------

## Network

----------------------------------------------------------------------------
Pour lister les cartes reseaux : ``Get-NetAdapter | fl Name, InterfaceIndex``


Name           : VirtualBox Host-Only Network #2 Carte crée pour virtualbox
InterfaceIndex : 18

Name           : Ethernet carte utiliser par notre prise ethernet 
InterfaceIndex : 11

Name           : Wi-Fi  carte utiliser pour le wifi par notre pc 
InterfaceIndex : 3

netstat -an

Connexions actives

  Proto  Adresse locale         Adresse distante       État
  TCP    0.0.0.0:80             0.0.0.0:0              LISTENING
  TCP    0.0.0.0:135            0.0.0.0:0              LISTENING
  TCP    0.0.0.0:445            0.0.0.0:0              LISTENING
  TCP    0.0.0.0:1337           0.0.0.0:0              LISTENING
  TCP    0.0.0.0:5040           0.0.0.0:0              LISTENING
  TCP    0.0.0.0:5357           0.0.0.0:0              LISTENING
  TCP    0.0.0.0:5426           0.0.0.0:0              LISTENING
  TCP    0.0.0.0:7680           0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49664          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49665          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49666          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49667          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49668          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49669          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:49686          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:54235          0.0.0.0:0              LISTENING
  TCP    0.0.0.0:54236          0.0.0.0:0              LISTENING
  TCP    10.2.1.1:139           0.0.0.0:0              LISTENING
  TCP    127.0.0.1:3213         0.0.0.0:0              LISTENING
  TCP    127.0.0.1:6463         0.0.0.0:0              LISTENING
  TCP    127.0.0.1:8384         0.0.0.0:0              LISTENING
  TCP    127.0.0.1:8384         127.0.0.1:25718        ESTABLISHED
  TCP    127.0.0.1:8384         127.0.0.1:55403        ESTABLISHED
  TCP    127.0.0.1:8386         0.0.0.0:0              LISTENING
  TCP    127.0.0.1:8386         127.0.0.1:55402        ESTABLISHED
  TCP    127.0.0.1:22000        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:22000        127.0.0.1:55408        ESTABLISHED
  TCP    127.0.0.1:22001        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:24653        127.0.0.1:24654        ESTABLISHED
  TCP    127.0.0.1:24654        127.0.0.1:24653        ESTABLISHED
  TCP    127.0.0.1:25084        127.0.0.1:25085        ESTABLISHED
  TCP    127.0.0.1:25085        127.0.0.1:25084        ESTABLISHED
  TCP    127.0.0.1:25108        127.0.0.1:25109        ESTABLISHED
  TCP    127.0.0.1:25109        127.0.0.1:25108        ESTABLISHED
  TCP    127.0.0.1:25393        127.0.0.1:25394        ESTABLISHED
  TCP    127.0.0.1:25394        127.0.0.1:25393        ESTABLISHED
  TCP    127.0.0.1:25480        127.0.0.1:25481        ESTABLISHED
  TCP    127.0.0.1:25481        127.0.0.1:25480        ESTABLISHED
  TCP    127.0.0.1:25601        127.0.0.1:25602        ESTABLISHED
  TCP    127.0.0.1:25602        127.0.0.1:25601        ESTABLISHED
  TCP    127.0.0.1:25693        127.0.0.1:25694        ESTABLISHED
  TCP    127.0.0.1:25694        127.0.0.1:25693        ESTABLISHED
  TCP    127.0.0.1:25697        127.0.0.1:8384         TIME_WAIT
  TCP    127.0.0.1:25707        127.0.0.1:55400        ESTABLISHED
  TCP    127.0.0.1:25718        127.0.0.1:8384         ESTABLISHED
  TCP    127.0.0.1:50001        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:55170        127.0.0.1:65001        ESTABLISHED
  TCP    127.0.0.1:55256        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:55256        127.0.0.1:55385        ESTABLISHED
  TCP    127.0.0.1:55324        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:55324        127.0.0.1:55338        ESTABLISHED
  TCP    127.0.0.1:55324        127.0.0.1:55470        ESTABLISHED
  TCP    127.0.0.1:55338        127.0.0.1:55324        ESTABLISHED
  TCP    127.0.0.1:55385        127.0.0.1:55256        ESTABLISHED
  TCP    127.0.0.1:55400        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:55400        127.0.0.1:25707        ESTABLISHED
  TCP    127.0.0.1:55402        127.0.0.1:8386         ESTABLISHED
  TCP    127.0.0.1:55403        127.0.0.1:8384         ESTABLISHED
  TCP    127.0.0.1:55408        127.0.0.1:22000        ESTABLISHED
  TCP    127.0.0.1:55470        127.0.0.1:55324        ESTABLISHED
  TCP    127.0.0.1:55795        127.0.0.1:55796        ESTABLISHED
  TCP    127.0.0.1:55796        127.0.0.1:55795        ESTABLISHED
  TCP    127.0.0.1:55799        127.0.0.1:55800        ESTABLISHED
  TCP    127.0.0.1:55800        127.0.0.1:55799        ESTABLISHED
  TCP    127.0.0.1:55805        127.0.0.1:55806        ESTABLISHED
  TCP    127.0.0.1:55806        127.0.0.1:55805        ESTABLISHED
  TCP    127.0.0.1:60518        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:65001        0.0.0.0:0              LISTENING
  TCP    127.0.0.1:65001        127.0.0.1:55170        ESTABLISHED
  TCP    192.168.1.55:139       0.0.0.0:0              LISTENING
  TCP    192.168.1.55:24795     52.69.49.218:443       ESTABLISHED
  TCP    192.168.1.55:25416     23.96.112.38:443       ESTABLISHED
  TCP    192.168.1.55:25422     35.186.224.47:443      ESTABLISHED
  TCP    192.168.1.55:25692     52.88.148.130:443      TIME_WAIT
  TCP    192.168.1.55:25696     52.157.234.37:443      ESTABLISHED
  TCP    192.168.1.55:25702     54.148.155.193:443     ESTABLISHED
  TCP    192.168.1.55:25703     2.21.84.57:80          ESTABLISHED
  TCP    192.168.1.55:25705     2.21.84.57:80          ESTABLISHED
  TCP    192.168.1.55:55249     162.159.130.234:443    ESTABLISHED
  TCP    192.168.1.55:55312     18.211.21.156:443      ESTABLISHED
  TCP    192.168.1.55:55318     18.211.21.156:443      ESTABLISHED
  TCP    192.168.1.55:55356     192.168.1.67:443       ESTABLISHED
  TCP    192.168.1.55:55723     162.159.137.234:443    ESTABLISHED
  TCP    192.168.1.55:55808     52.33.155.51:443       ESTABLISHED
  TCP    192.168.1.55:55965     40.67.254.36:443       ESTABLISHED
  TCP    192.168.56.1:139       0.0.0.0:0              LISTENING
  TCP    [::]:80                [::]:0                 LISTENING
  TCP    [::]:135               [::]:0                 LISTENING
  TCP    [::]:445               [::]:0                 LISTENING
  TCP    [::]:1337              [::]:0                 LISTENING
  TCP    [::]:5357              [::]:0                 LISTENING
  TCP    [::]:5426              [::]:0                 LISTENING
  TCP    [::]:7680              [::]:0                 LISTENING
  TCP    [::]:49664             [::]:0                 LISTENING
  TCP    [::]:49665             [::]:0                 LISTENING
  TCP    [::]:49666             [::]:0                 LISTENING
  TCP    [::]:49667             [::]:0                 LISTENING
  TCP    [::]:49668             [::]:0                 LISTENING
  TCP    [::]:49669             [::]:0                 LISTENING
  TCP    [::]:49686             [::]:0                 LISTENING
  TCP    [::]:54235             [::]:0                 LISTENING
  TCP    [::]:54236             [::]:0                 LISTENING
  TCP    [::1]:5426             [::1]:55200            ESTABLISHED
  TCP    [::1]:5426             [::1]:55208            ESTABLISHED
  TCP    [::1]:5426             [::1]:55211            ESTABLISHED
  TCP    [::1]:5426             [::1]:55214            ESTABLISHED
  TCP    [::1]:5426             [::1]:55291            ESTABLISHED
  TCP    [::1]:5426             [::1]:55422            ESTABLISHED
  TCP    [::1]:5426             [::1]:55426            ESTABLISHED
  TCP    [::1]:5426             [::1]:55429            ESTABLISHED
  TCP    [::1]:5426             [::1]:55434            ESTABLISHED
  TCP    [::1]:5426             [::1]:55435            ESTABLISHED
  TCP    [::1]:5426             [::1]:55439            ESTABLISHED
  TCP    [::1]:50012            [::]:0                 LISTENING
  TCP    [::1]:55200            [::1]:5426             ESTABLISHED
  TCP    [::1]:55208            [::1]:5426             ESTABLISHED
  TCP    [::1]:55211            [::1]:5426             ESTABLISHED
  TCP    [::1]:55214            [::1]:5426             ESTABLISHED
  TCP    [::1]:55291            [::1]:5426             ESTABLISHED
  TCP    [::1]:55422            [::1]:5426             ESTABLISHED
  TCP    [::1]:55426            [::1]:5426             ESTABLISHED
  TCP    [::1]:55429            [::1]:5426             ESTABLISHED
  TCP    [::1]:55434            [::1]:5426             ESTABLISHED
  TCP    [::1]:55435            [::1]:5426             ESTABLISHED
  TCP    [::1]:55439            [::1]:5426             ESTABLISHED
  UDP    0.0.0.0:500            *:*
  UDP    0.0.0.0:3702           *:*
  UDP    0.0.0.0:3702           *:*
  UDP    0.0.0.0:3702           *:*
  UDP    0.0.0.0:3702           *:*
  UDP    0.0.0.0:4500           *:*
  UDP    0.0.0.0:5050           *:*
  UDP    0.0.0.0:5353           *:*
  UDP    0.0.0.0:5355           *:*
  UDP    0.0.0.0:52522          *:*
  UDP    0.0.0.0:54831          *:*
  UDP    0.0.0.0:55179          *:*
  UDP    0.0.0.0:62448          *:*
  UDP    0.0.0.0:64673          *:*
  UDP    10.2.1.1:137           *:*
  UDP    10.2.1.1:138           *:*
  UDP    10.2.1.1:1900          *:*
  UDP    10.2.1.1:2177          *:*
  UDP    10.2.1.1:5353          *:*
  UDP    10.2.1.1:61865         *:*
  UDP    127.0.0.1:1900         *:*
  UDP    127.0.0.1:10030        *:*
  UDP    127.0.0.1:10031        *:*
  UDP    127.0.0.1:55172        *:*
  UDP    127.0.0.1:61867        *:*
  UDP    127.0.0.1:64859        *:*
  UDP    192.168.1.55:137       *:*
  UDP    192.168.1.55:138       *:*
  UDP    192.168.1.55:1900      *:*
  UDP    192.168.1.55:2177      *:*
  UDP    192.168.1.55:5353      *:*
  UDP    192.168.1.55:61866     *:*
  UDP    192.168.56.1:137       *:*
  UDP    192.168.56.1:138       *:*
  UDP    192.168.56.1:1900      *:*
  UDP    192.168.56.1:2177      *:*
  UDP    192.168.56.1:5353      *:*
  UDP    192.168.56.1:61864     *:*
  UDP    [::]:500               *:*
  UDP    [::]:3702              *:*
  UDP    [::]:3702              *:*
  UDP    [::]:3702              *:*
  UDP    [::]:3702              *:*
  UDP    [::]:4500              *:*
  UDP    [::]:5353              *:*
  UDP    [::]:5355              *:*
  UDP    [::]:52523             *:*
  UDP    [::]:55180             *:*
  UDP    [::]:62448             *:*
  UDP    [::]:64674             *:*
  UDP    [::1]:1900             *:*
  UDP    [::1]:5353             *:*
  UDP    [::1]:61863            *:*
  UDP    [fe80::14b3:b401:fc37:aec0%3]:1900  *:*
  UDP    [fe80::14b3:b401:fc37:aec0%3]:2177  *:*
  UDP    [fe80::14b3:b401:fc37:aec0%3]:61862  *:*
  UDP    [fe80::3d27:2f72:e101:9c45%16]:1900  *:*
  UDP    [fe80::3d27:2f72:e101:9c45%16]:2177  *:*
  UDP    [fe80::3d27:2f72:e101:9c45%16]:61860  *:*
  UDP    [fe80::7858:68c6:9986:f45e%18]:1900  *:*
  UDP    [fe80::7858:68c6:9986:f45e%18]:2177  *:*
  UDP    [fe80::7858:68c6:9986:f45e%18]:61861  *:*
  
  
 ---------------------------------------------------------------------------
 User
 ------------------------------------------------------------------------
 Pour lister les differant user: ``net user``
 
comptes d’utilisateurs de \\DESKTOP-5BM3SUL

Administrateur           bapti                    DefaultAccount comme le dit la commande seul cette utilisateur est l'admin de la machine
Invité                   WDAGUtilityAccount       YNOV01
YNOV02                   YNOV03                   YNOV04
YNOV05                   YNOV06                   YNOV07
YNOV08                   YNOV09                   YNOV10
YNOV11                   YNOV12                   YNOV13
YNOV14                   YNOV15                   YNOV16
YNOV17                   YNOV18                   YNOV19

-----------------------------------------------------------------------------
Processus
--------------------------------------------------------------------------
 Pour connaitre tous les processus en arriere plan ``tasklist``
 
 J'ai pas tous mit sinon ca serai imbuvable

Nom de l’image                 PID Nom de la sessio Numéro de s Utilisation
========================= ======== ================ =========== ============
System Idle Process              0 Services                   0         8 Ko 
System                           4 Services                   0        44 Ko 
Registry                       144 Services                   0    53 972 Ko
smss.exe                       496 Services                   0       472 Ko Gestionnaire de Session du Sous-Système gere toutes les app au demarages
csrss.exe                      724 Services                   0     3 688 Ko Sert à gérer les fenêtres et les éléments graphiques de Windows. 
wininit.exe                    828 Services                   0     4 280 Ko initializer de windows
services.exe                   900 Services                   0     8 048 Ko
lsass.exe                      920 Services                   0    16 508 Ko sert a l'identification des utilisateurs 
svchost.exe                    620 Services                   0     1 836 Ko
svchost.exe                    944 Services                   0    27 716 Ko
fontdrvhost.exe               1032 Services                   0     1 080 Ko est un composant logiciel de Windows font driver management qui permet de gerer les driver
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
wlanext.exe                   3660 Services                   0     3 196 Ko
spoolsv.exe                   3728 Services                   0    17 008 Ko
conhost.exe                   3736 Services                   0     2 776 Ko
svchost.exe                   3824 Services                   0    17 240 Ko
ServiceMiseAJourIndex.exe     4060 Services                   0    11 992 Ko
svchost.exe                   3216 Services                   0    22 100 Ko
WmiPrvSE.exe                  4160 Services                   0     8 736 Ko
svchost.exe                   4412 Services                   0     4 448 Ko
IntelCpHDCPSvc.exe            4424 Services                   0     3 984 Ko
svchost.exe                   4432 Services                   0    11 052 Ko
svchost.exe                   4440 Services                   0    26 196 Ko
ACCSvc.exe                    4448 Services                   0     7 588 Ko
svchost.exe                   4456 Services                   0    18 952 Ko
svchost.exe                   4464 Services                   0    23 588 Ko
svchost.exe                   4484 Services                   0     5 108 Ko
svchost.exe                   4492 Services                   0    10 168 Ko
ICEsoundService64.exe         4500 Services                   0     2 428 Ko
RazerCentralService.exe       4516 Services                   0    53 552 Ko 
GameManagerService.exe        4524 Services                   0    63 212 Ko
svchost.exe                   4532 Services                   0     3 244 Ko
svchost.exe                   4540 Services                   0     9 880 Ko
NortonSecurity.exe            4548 Services                   0    17 940 Ko  
RstMwService.exe              4556 Services                   0     2 800 Ko
sqlwriter.exe                 4564 Services                   0     4 276 Ko
RzSDKService.exe              4572 Services                   0     6 788 Ko
FNPLicensingService64.exe     4580 Services                   0     5 532 Ko
OfficeClickToRun.exe          4588 Services                   0    27 708 Ko
svchost.exe                   4596 Services                   0     2 980 Ko
RzSDKServer.exe               4608 Services                   0     5 256 Ko
OriginWebHelperService.ex     4628 Services                   0    12 272 Ko
MsMpEng.exe                   4640 Services                   0   152 128 Ko
nsWscSvc.exe                  4648 Services                   0     6 440 Ko
WirelessKB850Notification     4712 Services                   0     3 472 Ko
nvcontainer.exe               4732 Services                   0    22 896 Ko
svchost.exe                   4864 Services                   0     5 740 Ko
sqlceip.exe                   4908 Services                   0    31 620 Ko
sqlservr.exe                  4916 Services                   0    90 948 Ko 
ReportingServicesService.     5016 Services                   0    56 636 Ko
svchost.exe                   5212 Services                   0     2 808 Ko
dasHost.exe                   5264 Services                   0    11 996 Ko
svchost.exe                   5348 Services                   0     7 544 Ko
IntelCpHeciSvc.exe            5364 Services                   0     3 848 Ko
svchost.exe                   6524 Services                   0     6 616 Ko
dasHost.exe                   6972 Services                   0     1 852 Ko
Microsoft.ReportingServic     7064 Services                   0    25 568 Ko
conhost.exe                   7084 Services                   0     3 688 Ko
WmiPrvSE.exe                  7136 Services                   0    21 296 Ko
fdlauncher.exe                7572 Services                   0     2 532 Ko
Launchpad.exe                 7600 Services                   0    10 036 Ko
fdhost.exe                    7708 Services                   0     2 476 Ko
conhost.exe                   7716 Services                   0     2 500 Ko
svchost.exe                   6544 Services                   0    16 844 Ko
SearchIndexer.exe             8296 Services                   0    41 392 Ko
svchost.exe                   8448 Services                   0     3 916 Ko
svchost.exe                   8456 Services                   0     5 784 Ko
svchost.exe                   8700 Services                   0     6 932 Ko
Razer Synapse Service.exe     8836 Services                   0    65 984 Ko
PresentationFontCache.exe     8964 Services                   0     5 328 Ko
svchost.exe                   9200 Services                   0    14 688 Ko
svchost.exe                   9464 Services                   0     4 900 Ko
svchost.exe                  10040 Services                   0    14 440 Ko
NisSrv.exe                    4404 Services                   0     8 676 Ko
svchost.exe                  10616 Services                   0     5 508 Ko
svchost.exe                  12076 Services                   0    16 852 Ko
svchost.exe                  12296 Services                   0    12 544 Ko
dllhost.exe                  12476 Services                   0     7 060 Ko
XtuService.exe               10324 Services                   0    22 692 Ko
GoogleCrashHandler.exe       13472 Services                   0     1 432 Ko  
GoogleCrashHandler64.exe     14016 Services                   0       872 Ko
PSSvc.exe                    14120 Services                   0     9 616 Ko
SecurityHealthService.exe     8420 Services                   0    10 192 Ko
svchost.exe                  14640 Services                   0     6 380 Ko
QASvc.exe                    15556 Services                   0     8 056 Ko
svchost.exe                   4692 Services                   0     9 032 Ko
svchost.exe                  19520 Services                   0     7 032 Ko
DolbyDAX2API.exe             20048 Services                   0    22 188 Ko
svchost.exe                   4976 Services                   0    13 576 Ko
FABS.exe                     19364 Services                   0     5 840 Ko
svchost.exe                  17376 Services                   0     8 920 Ko
IAStorDataMgrSvc.exe          2612 Services                   0    30 064 Ko
jhi_service.exe               4828 Services                   0     4 152 Ko
LMS.exe                      19020 Services                   0     8 916 Ko
SgrmBroker.exe                1004 Services                   0     5 080 Ko
svchost.exe                  19232 Services                   0    11 436 Ko
svchost.exe                  19652 Services                   0     7 424 Ko
svchost.exe                  10016 Services                   0     7 940 Ko
svchost.exe                  22268 Services                   0     7 876 Ko
svchost.exe                   8576 Services                   0    27 096 Ko
audiodg.exe                  18220 Services                   0    17 732 Ko
csrss.exe                    14232 Console                    3     5 016 Ko
winlogon.exe                  1444 Console                    3     8 628 Ko
fontdrvhost.exe              22792 Console                    3     5 824 Ko
dwm.exe                      14168 Console                    3   148 896 Ko
NVDisplay.Container.exe       2256 Console                    3    30 768 Ko
svchost.exe                  18112 Services                   0     5 892 Ko
nvcontainer.exe              23488 Console                    3    21 436 Ko
sihost.exe                   23136 Console                    3    25 256 Ko
svchost.exe                   2616 Console                    3    25 368 Ko
Razer Synapse Service Pro    11428 Console                    3    46 776 Ko
igfxEM.exe                   16804 Console                    3    17 184 Ko
svchost.exe                  18688 Console                    3    33 912 Ko
nvcontainer.exe               5104 Console                    3    30 980 Ko
taskhostw.exe                21172 Console                    3    14 000 Ko
explorer.exe                 11000 Console                    3   146 196 Ko
ctfmon.exe                   15520 Console                    3    13 804 Ko
svchost.exe                   1928 Console                    3    30 824 Ko
svchost.exe                  23284 Services                   0     6 560 Ko
dllhost.exe                  17700 Console                    3     7 460 Ko
StartMenuExperienceHost.e     8384 Console                    3    64 740 Ko
RuntimeBroker.exe             6360 Console                    3    20 956 Ko
TSVNCache.exe                 8120 Console                    3     8 816 Ko
SearchUI.exe                  8332 Console                    3    99 372 Ko
SettingSyncHost.exe          22976 Console                    3     5 444 Ko
NVIDIA Web Helper.exe        14368 Console                    3    10 444 Ko

----------------------------------------------------------------------------
Scripting
----------------------------------------------------------------------------
