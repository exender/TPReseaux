Sortie en écriture  " Nom de la machine: $ env: COMPUTERNAME " 
Sortie en écriture  " Adresse IP principal: "
Écriture-sortie  " ---------------------------------------------- ------ "
Sortie d'écriture  " OS: $ env: OS " 
Write-Output  " Version de l'OS: $ (( Get-CimInstance Win32_OperatingSystem) .version) "  
Write-Output  " Uptime: $ (( get-date ) - $ ((gcim Win32_OperatingSystem)). LastBootUpTime) "
Write-Output  " Le système d'exploitation est-il à jour: "
Écriture-sortie  " ---------------------------------------------- ------ "
Sortie en écriture  " RAM: " 
Écriture-sortie  " Utilisation: "
Écriture-Sortie  " Espace libre: $ ( Get-CimInstance Win32_PhysicalMemory |  Measure-Object  - Capacité de propriété - Sum |  Foreach { " {0: N2} "  -f ([ math ] :: round (( $ _ .Sum  /  1 GB) ) , 2 ))}) "
Écriture-sortie  " ---------------------------------------------- ------ "
Sortie-écriture  " Espace disque "
Sortie en écriture  " Espace disque use: "
Get-WmiObject win32_logicaldisk |  Format-Table DeviceId ,  @ { n  =  " Size " ; e  = {[ math ] :: Round ( $ _ .Size  /  1 Go ,  2 )}} ,  @ { n  =  " UsedSpace " ; e  = {[ math ] :: Round (( $ _ .Size  -  $ _ .FreeSpace ) /  1 Go ,  2)}}
Sortie écriture  " Espace disque dispo: "
Get-WmiObject win32_logicaldisk |  Format-Table DeviceId ,  @ { n  =  " Size " ; e  = {[ math ] :: Round ( $ _ .Size  /  1 Go ,  2 )}} ,  @ { n  =  " FreeSpace " ; e  = {[ math ] :: Round ( $ _ .FreeSpace  /  1 Go ,  2 )}}
Écriture-sortie  " ---------------------------------------------- ------ "
Sortie-écriture  " Liste des utilisateurs: "
Get-LocalUser  |  Format-Table
Écriture-sortie  " ---------------------------------------------- ------ "
ping 8.8 . 8.8