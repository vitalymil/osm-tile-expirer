FROM ruby

RUN apt-get update
RUN apt-get install -y libproj-dev

RUN gem install proj4rb libxml-ruby