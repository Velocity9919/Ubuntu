  ````
sudo apt-get update -y
sudo apt-get install -y default-jdk
java --version
````
````
apt install unzip
````
````
adduser sonarqube
````
````
sudo su - sonarqube
````
````
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.0.65466.zip
````
````
unzip *
````
````
mv sonarqube-9.9.0.65466 sonarqube
````
````
rm sonarqube-9.9.0.65466.zip
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

Hurray !! Now you can access the SonarQube Server on http://<ip-address>:9000
