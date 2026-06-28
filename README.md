
# Containerized Java Microservice

A lightweight, cloud-ready Java microservice designed to run inside an isolated container environment. This repository demonstrates how to build modular backend infrastructure and package it for seamless cloud deployments using Docker.

# Key Features
* Native HTTP Server: Built using Java's built-in `HttpServer` to keep the application footprint minimal and fast.
* REST API Endpoint: Exposes a secure JSON status route (`/api/status`) optimized for cloud load-balancer health checks.
* Dockerized Infrastructure: Includes a multi-step configuration file to package, compile, and run the Java environment inside any cloud infrastructure (AWS, Azure, GCP).

# Project Structure
java-cloud-container-service/
├── src/
│   └── CloudApp.java      # Lightweight HTTP API server logic
├── Dockerfile             # Container configuration blueprint for cloud deployment
└── README.md


# Deployment with Docker
This application is decoupled from local machine settings and is fully configured to be run anywhere via containerization.

# Build the Image
```bash
docker build -t java-cloud-service .
Run the Container Locally
Bash
docker run -p 8080:8080 java-cloud-service

Once started, the API can be accessed via browser or API client at http://localhost:8080/api/status
