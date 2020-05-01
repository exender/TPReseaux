# Tp6 version linux ubuntu 
## Environement 
## Host OS
Pour connaitre les differants composants de son pc en ligne de commande on utilise inxi pour cela avant il faut l'installer 

```linux
sudo apt install inxi
```
On va utiliser la commande 
```linux
inxi
```
```linux
inxi
CPU: Single Core Intel Core i5-5250U (-MCP-) speed: 1600 MHz Kernel: 5.3.0-42-generic x86_64 Up: 13m 
Mem: 1122.2/2400.7 MiB (46.7%) Storage: 26.19 GiB (30.1% used) Procs: 189 Shell: bash 5.0.3 inxi: 3.0.36 
```
Ce qui va nous donner un resumer de notre config 
Avec la RAM et le processeur 
Pour avoir l'architecture de notre processeur il faut faire 
```linux
inxi -S
```
```linux
inxi -S
System:    Host: baptiste-VirtualBox Kernel: 5.3.0-42-generic x86_64 bits: 64 Desktop: Gnome 3.34.3 
           Distro: Ubuntu 19.10 (Eoan Ermine)
```           
## Devices
Puis apres on peut utiliser lspci pour connaitre son materiel qui est connecter a la carte mere 

```linux
lspci
00:00.0 Host bridge: Intel Corporation 8th Gen Core Processor Host Bridge/DRAM Registers (rev 07)
00:01.0 PCI bridge: Intel Corporation Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor PCIe Controller (x16) (rev 07)
00:02.0 VGA compatible controller: Intel Corporation UHD Graphics 630 (Mobile)
00:08.0 System peripheral: Intel Corporation Xeon E3-1200 v5/v6 / E3-1500 v5 / 6th/7th/8th Gen Core Processor Gaussian Mixture Model
00:12.0 Signal processing controller: Intel Corporation Cannon Lake PCH Thermal Controller (rev 10)
00:14.0 USB controller: Intel Corporation Cannon Lake PCH USB 3.1 xHCI Host Controller (rev 10)
00:14.2 RAM memory: Intel Corporation Cannon Lake PCH Shared SRAM (rev 10)
00:14.3 Network controller: Intel Corporation Wireless-AC 9560 [Jefferson Peak] (rev 10)
00:15.0 Serial bus controller [0c80]: Intel Corporation Cannon Lake PCH Serial IO I2C Controller #0 (rev 10)
00:15.1 Serial bus controller [0c80]: Intel Corporation Cannon Lake PCH Serial IO I2C Controller #1 (rev 10)
00:16.0 Communication controller: Intel Corporation Cannon Lake PCH HECI Controller (rev 10)
00:17.0 RAID bus controller: Intel Corporation 82801 Mobile SATA Controller [RAID mode] (rev 10)
00:1d.0 PCI bridge: Intel Corporation Cannon Lake PCH PCI Express Root Port #14 (rev f0)
00:1e.0 Communication controller: Intel Corporation Cannon Lake PCH Serial IO UART Host Controller (rev 10)
00:1f.0 ISA bridge: Intel Corporation HM470 Chipset LPC/eSPI Controller (rev 10)
00:1f.3 Audio device: Intel Corporation Cannon Lake PCH cAVS (rev 10)
00:1f.4 SMBus: Intel Corporation Cannon Lake PCH SMBus Controller (rev 10)
00:1f.5 Serial bus controller [0c80]: Intel Corporation Cannon Lake PCH SPI Controller (rev 10)
01:00.0 VGA compatible controller: NVIDIA Corporation GP106M [GeForce GTX 1060 Mobile] (rev a1)
01:00.1 Audio device: NVIDIA Corporation GP106 High Definition Audio Controller (rev a1)
06:00.0 Unassigned class [ff00]: Realtek Semiconductor Co., Ltd. RTL8411B PCI Express Card Reader (rev 01)
06:00.1 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 12)

```
Ce qui va nous donner les informations des peripherique connecter a la carte mere 
Mais si l'on veut vraiment toutes les informations utiliser 

```linux
lspci -vvv
```
### Identification des composants
    
Le processeur Single Core Intel Core i5-5250U (-MCP-)

Pourkoi il s'appel comme ca psk c'est comme ca 

On peut observer que l'on ne voit pas le touchpad pour connaitre la marque il faut faire une nouvelle ligne de commande 
```linux
xinput
```
