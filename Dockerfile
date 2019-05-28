FROM tomcat
ADD . target/
COPY gameoflife.war  /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8080
