# Stage 1: Build the Spring Boot Application (Java 25)
FROM eclipse-temurin:25-jdk AS builder

WORKDIR /app

# Copy Maven wrapper and make executable
COPY mvnw .
COPY .mvn .mvn
RUN chmod +x mvnw

# Copy pom and download dependencies (cached layer)
COPY pom.xml .
RUN ./mvnw dependency:go-offline -B

# Copy source
COPY src src

# Build application (skip tests)
RUN ./mvnw clean package -Dmaven.test.skip=true

# Stage 2: Lightweight runtime image (Java 25 JRE)
FROM eclipse-temurin:25-jre

WORKDIR /app

# Copy jar produced in builder stage
COPY --from=builder /app/target/*.jar app.jar

# Expose port (match your Spring Boot server.port if changed)
EXPOSE 9090

# Start application
ENTRYPOINT ["java", "-jar", "app.jar"]
