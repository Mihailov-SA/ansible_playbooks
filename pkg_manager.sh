#!/bin/bash

 if [ "$1" == "install" ]; then
  shift
  count=1
  for param in "$*"
   do
    pkg=$(sed "s/ /,/g" <<< "$param")
    count=$(( $count + 1 ))
  done
  echo Installing these packages: $pkg
  ansible-playbook pkg_manager.yml --tags "install,debug_in" -e "pkg=$pkg"


 elif [ "$1" == "remove" ]; then
  shift
  count=1
  for param in "$*"
   do
    pkg=$(sed "s/ /,/g" <<< "$param")
    count=$(( $count + 1 ))
  done
  echo Removing these packages: $pkg
  ansible-playbook pkg_manager.yml --tags "remove,debug_rm" -e "pkg=$pkg"


 elif [ "$1" == "autoremove" ]; then
  echo Run apt autoremove...
  ansible-playbook pkg_manager.yml --tags "autoremove,debug_arm"


 elif [ "$1" == "autoclean" ]; then
  echo Run apt autoclean...
  ansible-playbook pkg_manager.yml --tags "autoclean,debug_acl"


 elif [ "$1" == "upgrade" ]; then
  echo Run apt upgrade...
  ansible-playbook pkg_manager.yml --tags "upgrade,debug_upg"


 else
   echo "Usage: ./pkg_manager.sh install/remove/autoremove/autoclean/upgrade package1 package2 ...
         Example:
         ./pkg_manager.sh install mc screen curl
         ./pkg_manager.sh remove mc
         ./pkg_manager.sh autoclean
         ./pkg_manager.sh autoremove
         ./pkg_manager.sh upgrade "

 fi



