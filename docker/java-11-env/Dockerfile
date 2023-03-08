FROM alpine

WORKDIR /app

RUN apk add openjdk11-jre maven

RUN export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/

RUN java -version
RUN mvn -version

RUN echo "Welcome to the Java 11 environment developer container!"
RUN echo "You often run this container like this: podman run -it -v ~/:/root/ -v .:/app -w /app java-11-env"
