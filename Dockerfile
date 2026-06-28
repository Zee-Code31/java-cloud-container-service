# Step 1: Use an official lightweight OpenJDK runtime base image
FROM eclipse-temurin:17-jdk-jammy

# Step 2: Set the working directory inside the cloud container
WORKDIR /app

# Step 3: Copy the Java source file into the container
COPY src/CloudApp.java .

# Step 4: Compile the Java application inside the environment
RUN javac CloudApp.java

# Step 5: Expose the network port 
EXPOSE 8080

# Step 6: Define how the cloud container runs the app
CMD ["java", "CloudApp"]
