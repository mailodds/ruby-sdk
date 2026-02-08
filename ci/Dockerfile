FROM docker.io/library/ruby:3.3-slim
RUN apt-get update -qq && apt-get install -y build-essential libcurl4-openssl-dev && rm -rf /var/lib/apt/lists/*
WORKDIR /sdk
COPY . .
RUN gem build mailodds.gemspec && gem install mailodds-*.gem
CMD ["ruby", "ci/smoke_test.rb"]
