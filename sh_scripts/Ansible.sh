#!/bin/bash
  sudo apt remove ansible
  sudo apt --purge autoremove
  sudo apt update -y
  sudo apt -y install software-properties-common
  sudo apt-add-repository ppa:ansible/ansible
  sudo apt install ansible -y
  sudo apt install python3-argcomplete -y
  sudo activate-global-python-argcomplete3
