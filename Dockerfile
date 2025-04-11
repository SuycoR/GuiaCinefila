FROM eclipse-temurin:21-jdk AS builder

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el JAR generado en el contenedor
COPY . .

RUN ./mvnw clean package -DskipTests

FROM eclipse-temurin:23-jre

WORKDIR /app

# Copiamos el JAR generado en el contenedor
COPY --from=builder /app/target/*.jar app.jar

# Exponemos el puerto 8080 (el que usa Spring Boot por defecto)
EXPOSE 8080

# Comando para ejecutar la aplicación cuando el contenedor arranque
ENTRYPOINT ["java", "-jar", "app.jar"]