FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add git bash && \
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv

CMD ~/.rbenv/bin/rbenv --version
