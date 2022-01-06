FROM openjdk:8-jdk-alpine
RUN apk add --no-cache curl \
    && mkdir /app

ARG JAVA_OPTS
VOLUME /data
VOLUME /app
WORKDIR /app
COPY ./ /app/
EXPOSE 1024
ENTRYPOINT ["sh", "-c", "/app/run.sh"]