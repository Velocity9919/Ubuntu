````
sudo apt update -y
sudo apt install openjdk-17-jre -y
sudo apt install openjdk-17-jdk -y
java --version
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
find /usr/lib/jvm/java-17* | head -n 3
````
````
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

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
