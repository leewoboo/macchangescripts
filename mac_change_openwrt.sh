#!/bin/ash

# change here the path
MAC=$(mac_calculate.sh)

#ifconfig wlan0 hw ether $MAC
uci set wireless.@wifi-iface[0].macaddr="$MAC"
uci commit wireless
wifi

