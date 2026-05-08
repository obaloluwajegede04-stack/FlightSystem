FROM eclipse-temurin:17
WORKDIR /app
COPY . .
RUN cmod +x mvnw
RUN ./ mvnw clean package
EXPOSE 8080
CMD {"java", "jar", "target"/flightsystem.jar}
