FROM ruby:2.6.3
WORKDIR /usr/src/app
RUN gem update --system && gem install bundler && bundle --version
COPY . .