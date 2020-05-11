#!/bin/bash

# USAGE:
# ./runcmd.sh 'ping -c1 google.com'
# ./runcmd.sh ls

ansible-playbook runcmd.yml -e cmd="'$*'"
