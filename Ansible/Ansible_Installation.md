1.First, remove the default version supplied by the official Ubuntu repos, run commands:
```
sudo apt remove ansible
sudo apt --purge autoremove
````
2.Update Ubuntu repo and apply all pending patches:
````
sudo apt update -y
````
3.Install software-properties-common package on Ubuntu to enable PPA support, run:
````
sudo apt -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible -y
````
4.Finally, install the latest version of Ansible on Ubuntu Linux using the apt:
````
sudo apt install ansible -y
````

5.Type the following two commands:
````
sudo apt install python3-argcomplete
sudo activate-global-python-argcomplete3
````
````
ansible --version
````

6.Creating your hosts file:
````
sudo vi /etc/ansible/hosts
````
7.Append your server’s DNS or IP address:

[webservers]
server1.cyberciti.biz
104.20.187.5
104.20.186.5

[devservers]
10.98.222.4
10.98.222.7
10.98.222.8
