#!/bin/bash

#Questão 1

# Realiza flush das regras.
iptables -F
#Altera políticas  parra accept.
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

#Questão 2
#O ping a partir da dmáquina do servidor ocorreu normalmente.
#O ping a partir da máquina do cliente não funcionou.

#Questão 3
iptables -P INPUT DROP
iptables -P OUTPUT ACCEPT
iptables -P FORWARD DROP

#O ping a partir da máquina do servidor não funcionou.
#O ping a partir da máquina do cliente não funcionou.

#Questão 4

iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT
iptables -A INPUT -p icmp --icmp-type echo-reply -j ACCEPT

#O ping a partir da máquina do servidor ocorreu normalmente
#O pinig a partir da máquina do cliente não funcionou

