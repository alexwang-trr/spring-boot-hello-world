# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# # Copy the Maven wrapper and pom.xml files
# COPY mvnw* pom.xml .
# COPY .mvn .mvn

# Copy the source code
COPY src src

# Package the application
RUN ./mvnw package -DskipTests

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/spring-boot-hello-world-0.0.1-SNAPSHOT.jar"]
