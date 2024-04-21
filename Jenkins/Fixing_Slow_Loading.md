Make changes in the xml file by logging into EC2 instance through command line using Git bash or any SSH tool.

Connect to Jenkins EC2 instance using Git bash or iTerm:

Navigate to Jenkins installation directory:
````
cd /var/lib/jenkins/
````
Modify jenkins.model.JenkinsLocationConfiguration.xml file by executing below command:
````
sudo vi jenkins.model.JenkinsLocationConfiguration.xml
````
````
<jenkinsUrl>http://13.232.166.240:8080/</jenkinsUrl>
````

Make sure you provide Jenkins current URL in below location and restart Jenkins.
````
sudo service jenkins restart
````
