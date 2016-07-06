FROM tomcat:8-jre8
MAINTAINER JimmyChiang

## Set the ENV
WORKDIR /usr/local/tomcat/webapps/ROOT/
RUN rm -rf *

ADD ROOT/ /usr/local/tomcat/webapps/ROOT/

## Open the Port

EXPOSE 8080

## Run the cmd
CMD ["catalina.sh","run"]
