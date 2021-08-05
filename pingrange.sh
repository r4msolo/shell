#!/bin/bash

if [ "$1" == "" ]
then
echo "Curso de pentest Profissional - DESEC Security"
echo "Exemplo de uso: $0 10.0.0."
else
for host in {1..254};do
ping -c1 $1$host | grep "64 bytes" | cut -d " " -f 4 | sed "s/.$/ Host Ativo!/"  #cifrão do sed informa pra pegar o final do arquivo/string
done
fi
