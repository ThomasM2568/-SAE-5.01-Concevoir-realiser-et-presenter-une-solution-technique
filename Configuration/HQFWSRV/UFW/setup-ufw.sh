#!/bin/bash

ufw allow proto tcp from any to 217.1.160.1 port 80;
ufw allow proto tcp from any to 217.1.160.1 port 443;
