FROM ubuntu:14.04
MAINTAINER Tejeshwar Raju R <az.teju@gmail.com>

RUN apt-get update -qq && apt-get install -yqq curl && apt-get install -y default-jdk tomcat7
ENV CATALINA_BASE /var/lib/tomcat7
RUN ln -s /usr/share/tomcat7/bin/catalina.sh /usr/local/bin/catalina.sh
ADD example/target/*.jar /var/lib/tomcat7/webapps/
EXPOSE 8080
ENTRYPOINT [catalina.sh run]

WORKDIR /home/teja

ADD . /home/atmo
