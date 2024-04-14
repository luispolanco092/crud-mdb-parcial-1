FROM maven:3.9.6-eclipse-temurin-17-focal AS builder

WORKDIR /app

# Copiar el archivo pom.xml y descargar las dependencias de Maven
COPY pom.xml .
RUN mvn dependency:go-offline

# Copiar el resto del código fuente y compilar la aplicación
COPY src ./src
RUN mvn package

# Segunda etapa para reducir el tamaño de la imagen final
FROM openjdk:17

WORKDIR /app

# Copiar el JAR compilado desde la etapa anterior
COPY --from=builder /app/target/crud-0.0.1-SNAPSHOT.jar /app/crud-0.0.1-SNAPSHOT.jar

# Comando de entrada para ejecutar la aplicación
CMD ["java", "-jar", "/app/crud-0.0.1-SNAPSHOT.jar"]
