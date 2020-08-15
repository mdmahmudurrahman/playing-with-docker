FROM ruby:2.7.1

LABEL maintainer="ddd@ddd.ccc"

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends nodejs
RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

WORKDIR /usr/src/app
COPY Gemfile* /usr/src/app/
RUN bundle install

COPY . /usr/src/app/
CMD ["bin/rails", "s", "-b", "0.0.0.0"]