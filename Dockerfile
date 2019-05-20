FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add git

CMD git --version
