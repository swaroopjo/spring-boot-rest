# Use a base image that includes JDK
FROM eclipse-temurin:21-jdk

# Set the working directory
WORKDIR /app

# Copy the packaged JAR file
COPY target/*.jar app.jar

# Specify the command to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]