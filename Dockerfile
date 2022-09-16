# client source
FROM node:lts as client
RUN apt-get update && apt-get install -y \
        make \ 
        gcc \ 
        g++ \
        git \ 
        python \
        openssl \
        curl \
        && rm -rf /var/lib/apt/lists/*
RUN mkdir /app
COPY ./client /app
# remove api path
RUN sed -i 's/http:\/\/[0-9]\+.[0-9]\+.[0-9]\+.[0-9]\+:[0-9]\+//g' /app/.env.production
RUN sed -i 's/ws:\/\/[0-9]\+.[0-9]\+.[0-9]\+.[0-9]\+:[0-9]\+\/api//g' /app/.env.production
WORKDIR /app
RUN npm i --registry=https://registry.npm.taobao.org --legacy-peer-deps
RUN npm run build:prod

FROM maven:3.8-jdk-8 as build
RUN mkdir -p /workspace
WORKDIR /workspace
# can remove
# COPY ./.m2 /root/.m2/
COPY ./server /workspace
RUN mkdir -p /workspace/billing-api/src/main/resources/static
COPY --from=client /app/dist /workspace/billing-api/src/main/resources/static
RUN mvn clean package -DskipTests

FROM openjdk:8-jdk-alpine as build-stage
RUN apk add --no-cache curl \
        && mkdir /app
VOLUME /data
VOLUME /app
WORKDIR /app
COPY --from=build /workspace/billing-api/target/billing-api-1.0-SNAPSHOT.jar /app/billing.jar
COPY --from=build /workspace/billing-api/src/main/resources/license.txt /app/license.txt
EXPOSE 1024
ENTRYPOINT ["sh", "-c", "java -Dserver.port=1024 -Dauth.api.host=cert.bi-ling.com -Duser.timezone=Asia/Shanghai -Dspring.profiles.active=vol ${JAVA_OPTS} -jar /app/billing.jar"]

FROM maven:3.8-jdk-8
COPY --from=build-stage /app/billing.jar /
