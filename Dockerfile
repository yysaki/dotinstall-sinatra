FROM ubuntu:18.04
COPY . /app
WORKDIR /app
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  gcc \
  libffi-dev \
  libsqlite3-dev \
  make \
  ruby \
  ruby-dev \
  sqlite3 && \
  apt-get clean && \
  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* && \
  sqlite3 bbs.db < seeds.sql && \
  gem install bundler && \
  bundle install
EXPOSE 80
CMD ["/usr/bin/ruby", "app.rb", "-p", "80", "-o", "0.0.0.0"]

