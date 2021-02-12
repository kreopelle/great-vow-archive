FROM ruby:3.0

# Install nodejs and postgresql-client
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Add Yarn repository
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Update
RUN apt-get update -y

# Install Yarn
RUN apt-get install yarn -y

ADD . /kayla/dev/app
WORKDIR /kayla/dev/app

# Install & run bundler
RUN gem install bundler:'~> 2.1.4'

RUN bundle

CMD ./docker-entrypoint.sh