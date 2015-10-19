#!/bin/ash

# change here the path to maclist.lst
PATH_MACLIST=maclist.lst

MAC="$(head -$(( 1$(head -100 /dev/urandom | tr -dc "0123456789" | head -c5) % `wc -l < $PATH_MACLIST` + 1)) $PATH_MACLIST | tail -1 | awk '{print $1}'):$(head
echo $MAC
