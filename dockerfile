FROM jenkins/jenkins:latest

MAINTAINER mathys1 mathys.briand@edu.ece.fr

COPY target/mon-app-1.0-SNAPSHOT.jar /app/my-app.jar

WORKDIR /app

CMD ["java", "-jar", "my-app.jar"]
