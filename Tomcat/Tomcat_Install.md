# tomcat installation steps
------- Java Installation --------
````
sudo apt update
sudo apt install default-jdk -y
java -version
````
````
cd /opt
````
````
wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.0.8/bin/apache-tomcat-10.0.8.tar.gz
````
````
sudo tar xzvf apache-tomcat-10.0.8.tar.gz
````
````
sudo mkdir /opt/tomcat/
````
````
sudo mv apache-tomcat-10.0.8/* /opt/tomcat/
````
````
sudo chown -R www-data:www-data /opt/tomcat/
````
````
sudo chmod -R 755 /opt/tomcat/
````
````
sudo vi /opt/tomcat/conf/tomcat-users.xml
````
````
<role rolename="manager-script"/>
  <role rolename="manager-gui"/>
  <role rolename="manager-jmx"/>
  <role rolename="manager-status"/>
  <role rolename="admin-gui"/>
<user username="tomcat" password="tomcat" roles="manager-script,admin-gui,manager-gui,manager-jmx,manager-status"/>
````

````
sudo vi /opt/tomcat/webapps/manager/META-INF/context.xml
````


<!-- <Valve className="org.apache.catalina.valves.RemoteAddrValve"

         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->


````
sudo vi /opt/tomcat/webapps/host-manager/META-INF/context.xml
````

<!--<Valve className="org.apache.catalina.valves.RemoteAddrValve"

         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" /> -->


````
sudo vi /etc/systemd/system/tomcat.service
````

````
[Unit]

Description=Tomcat

After=network.target



[Service]

Type=forking



User=root

Group=root



Environment="JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64"

Environment="JAVA_OPTS=-Djava.security.egd=file:///dev/urandom"

Environment="CATALINA_BASE=/opt/tomcat"

Environment="CATALINA_HOME=/opt/tomcat"

Environment="CATALINA_PID=/opt/tomcat/temp/tomcat.pid"

Environment="CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC"



ExecStart=/opt/tomcat/bin/startup.sh

ExecStop=/opt/tomcat/bin/shutdown.sh



[Install]

WantedBy=multi-user.target
````

````
sudo systemctl daemon-reload
````
````
sudo systemctl start tomcat
sudo systemctl enable tomcat
sudo systemctl status tomcat
````

http://192.0.2.10:8080
````
ls -l
````
````
sudo chown -R ubuntu:ubuntu /opt
````
