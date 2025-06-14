FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/quarkus-app/lib/ /app/lib/
COPY target/quarkus-app/*.jar /app/
COPY target/quarkus-app/app/ /app/app/
COPY target/quarkus-app/quarkus/ /app/quarkus/
ENTRYPOINT ["java", "-jar", "/app/quarkus-run.jar"]
