# Jenkins-Master:-
Create a new ec2 instance with new keypair name “Jenkins-Master”
````
sudo hostnamectl set-hostname Jenkins-Master
````
````
/bin/bash/
````
````
sudo apt-get update -y
sudo apt-get install -y default-jdk
java --version
````
````
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
````
````
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
````
````
sudo apt-get update
sudo apt-get install jenkins
````
````
sudo systemctl enable jenkins
````
````
sudo systemctl start jenkins
````
````
sudo systemctl status jenkins
````


# Jenkins-Slave : 

Create a new ec2 instance with new keypair name “Jenkins-Slave”
````
sudo hostnamectl set-hostname Jenkins-slave
````
````
/bin/bash/
````
````
sudo apt-get update -y
sudo apt-get install -y default-jdk
java –version
````
````
cd /opt/
````
````
wget https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-3.9.4-bin.tar.gz
````
````
tar -xvf apache-maven-3.9.4-bin.tar.gz
````
````
mv apache-maven-3.9.4 maven
````
````
rm apache-maven-3.9.4-bin.tar.gz
````
````
sudo vi /etc/profile.d/mavenenv.sh
````
````
export JAVA_HOME=/usr/lib/jvm/default-java

export M2_HOME=/opt/maven

export PATH=${M2_HOME}/bin:${PATH}
````
````
sudo chmod +x /etc/profile.d/mavenenv.sh
source /etc/profile.d/mavenenv.sh
````
````
mvn --version
````
````
cd /opt
````
````
mkdir Jenkins-slave
````
````
chmod 777 Jenkins-Slave
````
````
cd Jenkins-slave
````
````
ssh-keygen
````
````
cd /root/.ssh/
````
````
cat id_rsa  (copy the private key and paste it on Jenkins)
````
````
-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----
````
````
Cat id_rsa.pub
````
````
Vi authorized_keys (paste the public key )
````
````
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDB6jUED/9ghJXbOtKfesyY38lv13UX5Op5JFV3HDYo4D5iYc3xt0o3gNGtxRyGwfujcObvUX+C0XbF1J5oA9U5Ez+ajKeUICtHEVfWEYBwcGqqzaAasi7/MtElT8M4M4/5bzb32RfDyS59dJTuMiOXCG/kcJv4BKq26l++w/rdR/AOhXYek+OAzlxbtP+TRFK3h4AS8W3FV7DCKg7hTde4P7sSvKiw/y5bBFafhwHEBIBKDI4ECQzi0NGINS8zNq92r2L5jqZm2mDNJkBSpJ4tPfLHxMEWrsMkqKSM5GSwNlgA7nDTG/6a+IRcE8JbWZm2t88PbmF//4BwYU2yg9PXxemlXaZ95Q9+ZaeEf5YDJtMDv/2KCPOl75m4tQMpZFV1gC9JzGPLrFqC6YB1lbKxAUk3fYlyvu+eVXiqRFxEOU+sVIv6QZ5lTQOfs3Dn8xLnHUqhKD1+1+pt66K2CmZWWBJ5Lh+eg25iiaHirCuBDo9CgZs4RUrp5JpIwX7Snhc= root@Jenkins-slave
````

