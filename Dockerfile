FROM ubuntu:latest
# Create a directory for the app
WORKDIR /app
# Copy the app to the container
COPY . .
# install java
RUN apt-get update && apt-get install -y openjdk-17-jdk

# install dependencies
 RUN mvn clean package -DskipTests

# run the app
CMD ["java", "-jar", "target/docker-demo-0.0.1-SNAPSHOT.jar"]
