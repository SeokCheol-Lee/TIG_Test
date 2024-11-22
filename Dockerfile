FROM openjdk:21

# Jolokia JVM agent download from the updated URL
ADD https://repo1.maven.org/maven2/org/jolokia/jolokia-jvm/1.6.2/jolokia-jvm-1.6.2-agent.jar /opt/jolokia/jolokia.jar

RUN mkdir -p deploy
WORKDIR /deploy
COPY ./build/libs/initProject-0.0.1-SNAPSHOT.jar api.jar

# Run the application with Jolokia agent
CMD ["java", "-javaagent:/opt/jolokia/jolokia.jar=port=8778,host=0.0.0.0", "-jar", "/deploy/api.jar"]
