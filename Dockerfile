FROM ruby:2.5.8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /minha-aplicacao
WORKDIR /minha-aplicacao
ADD Gemfile /minha-aplicacao/Gemfile
ADD Gemfile.lock /minha-aplicacao/Gemfile.lock
RUN bundle install
ADD . /minha-aplicacao