FROM openjdk:8-jdk-alpine

RUN mkdir -p /usr/app/server
WORKDIR /usr/app/server


COPY ./target/dockerdemo-0.0.1-SNAPSHOT.jar /usr/app/server

WORKDIR /usr/app
EXPOSE 8080


RUN sh -c 'touch demo-docker-0.0.1-SNAPSHOT.jar'

CMD ["java","-jar","dockerdemo-0.0.1-SNAPSHOT.jar"]
