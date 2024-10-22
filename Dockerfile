FROM maven:3.9.9-eclipse-temurin-21-alpine as builder
#RUN apt-get update && apt-get upgrade -y
RUN apk update && apk upgrade --no-cache

# Copy local code to the container image.
WORKDIR /app
COPY pom.xml .
COPY src ./src

# Build a release artifact.
RUN mvn package -DskipTests

# Use AdoptOpenJDK for base image.
# It's important to use OpenJDK 8u191 or above that has container support enabled.
# https://hub.docker.com/r/adoptopenjdk/openjdk8
# https://docs.docker.com/develop/develop-images/multistage-build/#use-multi-stage-builds
#FROM eclipse-temurin:22-jre-alpine
FROM eclipse-temurin:21.0.4_7-jre-alpine
RUN apk update && apk upgrade --no-cache
#RUN apk add spring-core
# Copy the jar to the production image from the builder stage.
COPY --from=builder /app/target/*.jar /app.jar

# Run the web service on container startup.
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]

# [END run_helloworld_dockerfile]
# [END cloudrun_helloworld_dockerfile]
