FROM jenkins/jenkins:latest

MAINTAINER mathys1 mathys.briand@edu.ece.fr

COPY target/my-project-1.0-SNAPSHOT.jar /app/my-project.jar

WORKDIR /app

CMD ["java", "-jar", "my-project.jar"]
