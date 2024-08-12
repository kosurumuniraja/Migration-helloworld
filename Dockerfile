FROM tomcat:8.0-alpine
LABEL maintainer="chinniprashanth"
ADD target/migrate-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
EXPOSE 9191
CMD ["catalina.sh", "run"]
