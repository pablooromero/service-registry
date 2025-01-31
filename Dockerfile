# Imagen base de Java 17
FROM maven:3.8.8-eclipse-temurin-17 AS build

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR generado por Maven al contenedor
COPY target/service-registry-0.0.1-SNAPSHOT.jar service-registry.jar

# Expone el puerto 8761 para el servidor Eureka
EXPOSE 8761

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "service-registry.jar"]
