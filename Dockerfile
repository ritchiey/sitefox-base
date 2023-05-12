# FROM node:20-alpine as base
FROM node:16 as base

WORKDIR /app

# RUN apk add git build-base sqlite-dev
RUN apt-get update && \
    apt-get install -y build-essential libsqlite3-dev default-jre-headless

# openjdk-17-jdk-headless

RUN npm init -y sitefox-shadow-fullstack myapp

WORKDIR /app/myapp

RUN npm install react react-dom create-react-class --save

RUN make
