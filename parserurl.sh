#!/bin/bash

if [ "$1" == "" ]
then
  echo "Exemplo de uso: ./parserurl www.desecsecurity.com"
else
  curl $1 -s | grep href | cut -d "/" -f3 | grep "\." | cut -d '"' -f 1 | sort -u | grep -v "href"
fi
