#!/bin/bash

#Questão 1

# Realiza flush das regras.
iptables -F
#Altera políticas  parra accept.
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
