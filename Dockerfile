FROM alpine:latest

ARG RUBY_VERSION

RUN apk update && \
    apk upgrade && \
    apk add git bash gcc g++ make linux-headers zlib-dev openssl-dev readline-dev && \
    git clone https://github.com/rbenv/ruby-build.git ~/.ruby-build && \
    ~/.ruby-build/bin/ruby-build $RUBY_VERSION /usr/local/ruby && \
    ln -s /usr/local/ruby/bin/ruby /usr/bin/ruby

CMD ruby --version
