FROM registry.access.redhat.com/ubi8/openjdk-11

COPY ./target/helloworld-docker-1.1.jar /deployments/
COPY ./target/lib /deployments/lib

ENTRYPOINT java -jar /deployments/helloworld-docker-1.1.jar
EXPOSE 8080