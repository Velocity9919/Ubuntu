````
apt install unzip
````
````
adduser sonarqube
````
````
sudo su - sonarqube
````
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.4.0.54424.zip
````
````
unzip *
````
````
mv sonarqube-9.4.0.54424 sonarqube
````
````
rm sonarqube-9.4.0.54424.zip
````
````
chmod -R 755 sonarqube
````
````
chown -R sonarqube:sonarqube sonarqube
````
````
cd sonarqube/bin/linux-x86-64/
````
````
./sonar.sh start
````
````
./sonar.sh status
````