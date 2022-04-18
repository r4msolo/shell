#!/bin/sh

for word in $(cat subdomain.lst);do 
host $word.$1 | grep -v "NXDOMAIN"
done
