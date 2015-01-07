# Dockerfile
# chruby

FROM ubuntu:latest

MAINTAINER Hallaj <hallajs@gmail.com>

# dependencies
RUN apt-get -qq update
RUN apt-get -qq -y install build-essential tmux wget

# chruby
COPY /scripts/setup/chruby.sh /scripts/setup/chruby.sh
RUN /scripts/setup/chruby.sh

# ruby-install
COPY /scripts/setup/ruby-install.sh /scripts/setup/ruby-install.sh
RUN /scripts/setup/ruby-install.sh

# rubies
COPY /scripts/setup/rubies.sh /scripts/setup/rubies.sh
RUN /scripts/setup/rubies.sh

# executable
COPY /scripts/exec/run.sh /scripts/exec/run.sh
CMD /scripts/exec/run.sh
