#!/bin/bash

# Variables
#Source and Destination
sourceIP=
destIP=

# dnsmasq.d files
defaultFile=01-pihole.conf
File10=02-pihole-10.conf
File22=03-pihole-proxy.conf

# actual dns files
file=custom.list
file_10=10.list
file_22=22.list

dnsmasqDest=/etc/dnsmasq.d
piholeDest=/etc/pihole/

# SYNCING pihole dnsmasq.d files
source1_command=${dnsmasqDest}/${defaultFile}
dest1_command=root@${destIP}:${dnsmasqDest}/${defaultFile}
 rsync -avz $source1_command $dest1_command
# echo $source1_command
# echo $dest1_command

# rsync -avz `${dnsmasqDest}/${defaultFile}`  `root@${destIP}`


# rsync -avz "/mnt/pve/HDD/template/cache/"  "root@192.168.10.4:/mnt/pve/HDD/template/cache/"
# rsync -avz "root@192.168.10.4:/mnt/pve/HDD/template/cache/" "/mnt/pve/HDD/template/cache"
