#!/bin/bash

#Questão 1

regras=$(iptables -L)
if [ $regras != '' ]; then
	iptables -L
else
	iptables -P INPUT ACCEPT
	iptables -P OUTPUT ACCEPT
	iptables -P FORWARD ACCEPT
fi
