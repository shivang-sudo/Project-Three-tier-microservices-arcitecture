# Stage 1 - BUILD
FROM maven:3.9-eclipse-temurin-8 AS build

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:resolve

COPY src/ ./src/

RUN mvn package -DskipTests

# Stage 2 - RUN
FROM eclipse-temurin:8-jre

WORKDIR /app

ENV CART_ENDPOINT=cart:8080
ENV DB_HOST=mysql

EXPOSE 8080

COPY --from=build /app/target/*.jar app.jar

CMD ["java", "-Xmn256m", "-Xmx768m", "-jar", "app.jar"]


# replaced openjdk-8 to eclipse-temurin-8 as openjdk-8 is removed from dockerhub.