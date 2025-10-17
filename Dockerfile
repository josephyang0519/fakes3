FROM ruby:2.4.10-alpine

RUN mkdir -p /fakes3/data
WORKDIR /fakes3

# Install required gems
RUN gem install thor -v 1.2.2
# Use latest version before license key became required
RUN gem install fakes3 -v 0.2.4

ENV PORT=4567

EXPOSE 4567

ENTRYPOINT fakes3 -r /fakes3/data -p $PORT
