# Usar a imagem base do OpenJDK 11
FROM openjdk:17-jdk-slim

# Adicionar um volume apontando para /tmp
VOLUME /tmp

# Definir o argumento para o JAR_FILE
ARG JAR_FILE=target/task-service-0.0.1-SNAPSHOT.jar

# Adicionar o JAR ao container
ADD ${JAR_FILE} app.jar

# Informar ao Docker que a aplicação ouve na porta 8080
EXPOSE 8080

# Comando para executar o JAR
ENTRYPOINT ["java", "-jar", "/app.jar"]