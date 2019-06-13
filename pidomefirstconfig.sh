#!/bin/bash

# This script does the base comfiguration of all the Pis
# with custom local configurations.

# Don't change this file!! Adjust the pidomeconfig

# This will find the local Pis
# sudo nmap -sP 192.168.0.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'
# Pulled info from these:
# MAC Address: B8:27:EB:B0:C0:7C (Raspberry Pi Foundation)
# Nmap scan report for 192.168.0.175
# Query ip name dig +short -x 10.0.0.200 @224.0.0.251 -p 5353

## RunAs Root
## Source the config file. This contains the customizations.

if [ -f "../PiDockMediaConfig/pidomeconfig" ];then
	. ../PiDockMediaConfig/pidomeconfig
elif [ -f ./pidomeconfig ]; then
	. pidomeconfig
else
	. pidomeconfig.sh
fi

## Record every step and output in a log file

## Find Unconfigured Pis and show them as <IP> <Name>

## Prompt which to build

## write out a in process file

## Write out each config as a script named <number 000-###>.<scriptdescriptor>

	## 000 set the hostname

	## 001 set the static IP

## Bundle the build scripts

## Copy the bundle of scripts over

## SSH in to the pi

## Explode all the scripts to a directory

## Run each script in order. If any script fails give a non zero exit and abort

## once a script has completed it gets deleted

## If it failed you can see the issue, fix it, and run the process again and it will start

## Write out the final log

##########

## Set the hostname

# hostname <hostname>
# echo <hostname> > /etc/hostname
# echo "127.0.1.1       <hostname>" >> /etc/hosts
# hostname <hostname>

## Set Time Zone

# rm /etc/localtime
# ln -s /usr/share/zoneinfo/US/Eastern /etc/localtime
# rm /etc/timezone

## Set WiFi Country

# cat > /etc/wpa_supplicant/wpa_supplicant.conf << EOF 
# ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
# update_config=1
# country=US
# EOF

## Configure WiFi as backup network

## Expand Filesystem

# raspi-config --expand-rootfs

## Change pi password

# echo -e "linuxpassword\nlinuxpassword" | passwd pi

## Set static IP

# cat >> /etc/dhcpcd.conf << EOF
# Static IP configuration:
# interface eth0
# static ip_address=192.168.0.X/24
# static routers=192.168.0.1
# static domain_name_servers=192.168.0.1 8.8.8.8
# EOF

## Update Everything

# apt-get -y update
# apt-get -y dist-upgrade

## Mount PiDoMe Share at Boot
# apt-get -y install samba-common smbclient samba-common-bin smbclient cifs-utils
# mkdir /mnt/share
# touch /mnt/share/MOUNTPOINT
# cat >> /etc/cifscred << EOF
# username=user
# password=secret
# workgroup=pidome
# EOF
# mount -t cifs //192.168.1.1/share /mnt/share -o vers=3.0,uid=pi,gid=pi,credentials=/etc/cifscred,rw

# //192.168.1.1/share /mnt/share cifs defaults,vers=3.0,uid=pi,gid=pi,credentials=/etc/cifscred,rw 0 0

## Install Docker and portainer

# mkdir /docker
# chown pi:pi docker
# curl -sSL https://get.docker.com | sh
# sudo usermod -aG docker pi
# sudo mkdir /docker
# sudo chown pi:pi /docker
# docker pull portainer/portainer
# docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock --restart always --name portainer portainer/portainer -H unix:///var/run/docker.sock
# sudo usermod -aG docker pi

###EOF
