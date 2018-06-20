FROM maven:3.5.3-jdk-8 AS build

COPY . .
RUN mvn -B -f pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve
RUN mvn -B -s /usr/share/maven/ref/settings-docker.xml package -DskipTests

FROM java:8-jdk-alpine
RUN adduser -Dh /home/treeptik treeptik
COPY --from=build target/springboot.helloworld.rest-0.0.1.jar /home/treeptik/

RUN chown treeptik:treeptik /home/treeptik/springboot.helloworld.rest-0.0.1.jar
USER treeptik

EXPOSE 8181
ENTRYPOINT [ "java", "-jar", "/home/treeptik/springboot.helloworld.rest-0.0.1.jar" ]
