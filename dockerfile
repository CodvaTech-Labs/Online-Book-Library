# Use an official OpenJDK runtime as a parent image
FROM openjdk

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container at /app
COPY target/Menu-Driven-0.0.1-SNAPSHOT.jar /app/

# Specify the command to run on container startup
EXPOSE 8080
ENTRYPOINT ["java","-jar","Menu-Driven-0.0.1-SNAPSHOT.jar"]
