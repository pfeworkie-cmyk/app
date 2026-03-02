# Use official OpenJDK 21 as base image
FROM openjdk:21-jdk-slim
# Set working directory inside container
WORKDIR /app

# Copy the jar file from host to container
COPY target/*.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java","-jar","app.jar"]
