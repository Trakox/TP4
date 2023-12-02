FROM jenkins/jenkins:latest

MAINTAINER mathys1 mathys.briand@edu.ece.fr

COPY target/my-app-1.0-SNAPSHOT.jar /app/mon-app.jar

WORKDIR /app

CMD ["java", "-jar", "my-app.jar"]
