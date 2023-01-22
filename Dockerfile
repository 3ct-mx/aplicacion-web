# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jre-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the application JAR file and its dependencies into the container
COPY target/aplicacion-web-2.0.1.jar /app/


# Start the application by running the JAR file
ENTRYPOINT ["java", "-jar", "aplicacion-web-2.0.1.jar"]
