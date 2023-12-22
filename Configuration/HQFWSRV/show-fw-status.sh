#!/bin/bash

ufw status verbose;
iptables -t nat -L -n -v;
