# Use OpenJDK 11 as the base image
FROM openjdk:11-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file from the target directory
COPY target/my-maven-app-1.0.0.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
