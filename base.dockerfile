FROM ruby
COPY apt.conf /etc/apt/
ENV https_proxy=http://user108:User108!@172.16.0.254:8080
ENV http_proxy=http://user108:User108!@172.16.0.254:8080

RUN apt-get update
RUN apt-get install -y libproj-dev

RUN gem install proj4rb libxml-ruby
ENV https_proxy=
ENV http_proxy=

