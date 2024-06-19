FROM maven:3.9.7-eclipse-temurin-17 as builder
COPY  . /root/app/
WORKDIR /root/app
RUN mvn install
FROM openjdk:17-oracle as jdk17
EXPOSE 8080
COPY --from=builder /root/app/ /home/app/
WORKDIR /home/app
ENTRYPOINT ["java","-jar", "-Xmx15m", "./target/testweb-1.0-SNAPSHOT.jar"]