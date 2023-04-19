FROM centos
RUN mkdir ./tomcat/
WORKDIR ./tomcat
RUN curl -O https://github.com/jeyago/tomcat-with-app/blob/master/apache-tomcat-with-app.tar.gz
RUN tar xvfz apache*.tar.gz
RUN yum -y install java
RUN java -version
EXPOSE 8080
CMD ["./tomcat/apache-tomcat-10.1.7/bin/catalina.sh", "run"]

