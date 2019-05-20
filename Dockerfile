FROM alpine:latest

ARG RUBY_VERSION

RUN apk update && \
    apk upgrade && \
    apk add git bash gcc g++ make linux-headers zlib-dev openssl-dev readline-dev mariadb-dev && \
    git clone https://github.com/rbenv/ruby-build.git ~/.ruby-build && \
    ~/.ruby-build/bin/ruby-build $RUBY_VERSION /usr/local/ruby && \
    /usr/local/ruby/bin/gem update --system && \
    ln -s /usr/local/ruby/bin/ruby /usr/bin/ruby && \
    ln -s /usr/local/ruby/bin/bundle /usr/bin/bundle

WORKDIR /opt

EXPOSE 3000
