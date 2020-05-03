#FROM maven:3.6.3-jdk-11-slim as build
FROM openjdk:11-jre-slim as build

#RUN jlink --module-path ${JAVA_HOME}/jmods \
#     --add-modules java.base,java.logging,java.xml,jdk.unsupported,java.sql,java.naming,java.desktop,java.management,java.security.jgss,java.instrument \
#     --compress 2 \
#     --no-header-files \
#     --output target/jlink-jre
#
#FROM debian:stretch-slim
#
#COPY --from=build /target/jlink-jre /opt/jlink-jre
#ENV JAVA_HOME=/opt/jlink-jre
#ENV PATH="$PATH:$JAVA_HOME/bin"

COPY /target/jlink-demo-1.0.0-SNAPSHOT.jar /app.jar
RUN chmod -R 777 /app.jar

EXPOSE 8081

ENTRYPOINT java -jar /app.jar