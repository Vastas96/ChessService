FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ChessService
WORKDIR /ChessService
COPY Gemfile /ChessService/Gemfile
COPY Gemfile.lock /ChessService/Gemfile.lock
RUN bundle install
COPY . /ChessService
