FROM centos:7
RUN yum install java-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.94/bin/apache-tomcat-8.5.94.tar.gz ./
WORKDIR /opt/
RUN tar -xzf /apache-tomcat-8.5.94.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.94
RUN ls /opt/apache-tomcat-8.5.94
COPY student.war /opt/apache-tomcat-8.5.94/webapps
CMD ["/opt/apache-tomcat-8.5.94/bin/catalina.sh", "run"]
ENTRYPOINT [ "apache-tomcat-8.5.94/bin/catalina.sh", "run" ]
