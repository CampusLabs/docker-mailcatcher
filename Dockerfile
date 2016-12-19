FROM quay.io/orgsync/ruby:2.2
MAINTAINER Joshua Griffith <joshua@orgsync.com>

ENV MAILCATCHER_VERSION 0.6.4
RUN gem install mailcatcher -v $MAILCATCHER_VERSION

CMD mailcatcher --http-ip=0.0.0.0 --smtp-ip=0.0.0.0 --foreground --verbose

EXPOSE 1025 1080
