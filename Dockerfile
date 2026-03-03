# Image Java 21 officielle maintenue
FROM eclipse-temurin:21-jdk-jammy

# Répertoire de travail
WORKDIR /app

# Copier le jar
COPY target/*.jar app.jar

# Port interne Spring Boot
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java","-jar","app.jar"]
