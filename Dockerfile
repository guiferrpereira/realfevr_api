FROM ruby:3.0.2-alpine

RUN apk add --no-cache --update build-base \
    bash \
    linux-headers \
    git \
    postgresql-client \
    postgresql-dev \
    tzdata

ENV APP_PATH /realfevr_api

RUN mkdir $APP_PATH
WORKDIR $APP_PATH

RUN gem install bundler

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . $APP_PATH

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
