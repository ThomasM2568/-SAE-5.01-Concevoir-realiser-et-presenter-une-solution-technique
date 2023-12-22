#!/bin/bash
#A executer en root (su -)
it="$(which iptables)";

sed -i 's/^#net.ipv4.ip_forward=1$/^net.ipv4.ip_forward=1$/';
sysctl -p;

#Setup Prerouting
$it -t nat -A PREROUTING -i ens224 -p tcp -d 217.1.160.1 --dport 80 -j DNAT --to 10.1.30.1:80;
$it -t nat -A PREROUTING -i ens224 -p tcp -d 217.1.160.1 --dport 443 -j DNAT --to 10.1.30.1:443;

#Setup Postrouting
$it -t nat -A POSTROUTING -o ens224 -j MASQUERADE;
$it -t nat -A POSTROUTING -s 10.1.30.1/30 ! -d 10.1.30.1/30 -j MASQUERADE;

