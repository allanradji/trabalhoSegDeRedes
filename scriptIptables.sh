#!/bin/bash

#Questão 1

regras=$(iptables -L)
if [ -z "$regras" ]; then
	iptables -F
else
	iptables -P INPUT ACCEPT
	iptables -P OUTPUT ACCEPT
	iptables -P FORWARD ACCEPT
fi
