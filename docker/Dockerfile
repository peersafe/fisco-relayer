# 1. Stage one: build ontology
FROM golang:1.18.3 AS build

COPY . /src

WORKDIR /src

RUN GOPROXY=https://goproxy.cn make

FROM ubuntu:latest
WORKDIR /app
COPY --from=build /src/build/bin/fisco-relayer /usr/local/bin/fisco-relayer

CMD ["/bin/bash"]