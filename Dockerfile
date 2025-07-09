FROM maven:3.8.6-eclipse-temurin-17 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

# Use skipTests and also skip test compilation entirely
RUN mvn clean package -Dmaven.test.skip=true

CMD ["mvn", "test"]
