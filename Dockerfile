FROM java:8-jdk-alpine
RUN adduser -Dh /home/treeptik treeptik
COPY target/springboot.helloworld.rest-0.0.2.jar /home/treeptik/

EXPOSE 8181
ENTRYPOINT [ "java", "-jar", "/home/treeptik/springboot.helloworld.rest-0.0.2.jar" ]
