# SSH connection between Ansible and Docker
````
hostnamectl hostname Jenkins
````
````
bash
````
````
sudo apt-get install -y default-jdk
````
server1 : install Jenkins
server2 : install ansible and docker
server3 : install docker

on jenkins and Ansible docker Server


All ansible and docker and Jenkins servers  ( if u login as a root user)
````
passwd root 
````
````
vi /etc/ssh/sshd_config
````
#PermitRootLogin prohibit-password (# uncomment) PermitRootLogin yes (change like this)

PasswordAuthentication no (change to PasswordAuthentication yes)
````
systemctl restart sshd
````
````
ssh-keygen
````
````
ssh-copy-id root@
````
172.31.14.123 (Node-PrivateIP)(ansible privateIP) (docker privateIP)
````
ssh root@
````
172.31.14.123 (docker IP)
it will connect to ansible
exit
````
vi /etc/ansible/hosts
````
[webservers]    (top of the file)
Docker Private IP
````
ansible webservers -m ping
````
