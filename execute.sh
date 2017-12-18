#!/bin/bash

## SCRIPT ##




echo "What is the target IP?"
read targetip

until [[ $pass == 0 ]]
do
    echo "Attempting SSH Connection..."
    ssh -q root@$targetip -o StrictHostKeyChecking=no 'echo "Success"'
    pass=$?
#    sleep 15
done

# ~/.ssh/config configuration for ansible
# sed -i "/host target/{n;s/.*/        Hostname $targetip/}" ~/.ssh/config

ansible-playbook -i hosts site.yml -vvvv

