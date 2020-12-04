#jdk version 8
FROM openjdk:8-jdk-alpine
#get jar file from target directory
ARG JAR_FILE=target/*.jar
#copy it to app.jar
COPY ${JAR_FILE} app.jar
#running command/instructions
ENTRYPOINT ["java","-jar","/app.jar"]
