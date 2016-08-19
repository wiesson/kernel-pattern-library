FROM ruby:2.3-alpine

RUN apk --update add nodejs
RUN apk --update add --virtual build_deps \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev postgresql-dev libxml2-dev libxslt-dev

RUN bundle config build.nokogiri --use-system-libraries

RUN mkdir -p /usr/local/pattern-lib/
COPY .ruby-version Gemfile config.rb Gemfile.lock /usr/local/pattern-lib/

WORKDIR /usr/local/pattern-lib

RUN bundle install
EXPOSE 4567
ENTRYPOINT ["bundle", "exec", "middleman"]
