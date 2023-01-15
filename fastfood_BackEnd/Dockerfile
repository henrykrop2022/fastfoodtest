FROM maven:3.8.4 AS maven
LABEL MAINTAINER="hermannchefouet@gmail.com"

WORKDIR /usr/src/app
COPY . /usr/src/app
# Compile and package the application to an executable JAR
RUN mvn package -DskipTests 

# For Java 11, 
FROM adoptopenjdk/openjdk11:alpine-jre

ARG JAR_FILE=fastfood-0.0.1-SNAPSHOT.jar

WORKDIR /opt/app

# Copy the fastfood-0.0.1-SNAPSHOT.jar from the maven stage to the /opt/app directory of the current stage.
COPY --from=maven /usr/src/app/target/${JAR_FILE} /opt/app/

ENTRYPOINT ["java","-jar","fastfood-0.0.1-SNAPSHOT.jar"]