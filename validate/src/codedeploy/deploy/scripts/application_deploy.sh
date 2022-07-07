#!/bin/bash
cd /home/ec2-user/deployed/TestApp
cp validate.war /opt/tomcat/webapps/
chown -R tomcat:tomcat /opt/tomcat/webapps