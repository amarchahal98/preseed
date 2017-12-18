#!/bin/bash

myip=`hostname -I`

sed -i "s/address.*/address $myip/" /etc/network/interfaces
