#!/bin/bash  
cd /home/ec2-user/deployed
mv validate.war /opt/tomcat/webapps/
chown -R tomcat:tomcat /opt/tomcat/webapps