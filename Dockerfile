FROM ruby:3.3.1-alpine

LABEL org.opencontainers.image.authors="dev@kjuly.com" \
      org.opencontainers.image.licenses=MIT \
      org.opencontainers.image.source=https://github.com/Kjuly/docker-jekyll \
      org.opencontainers.image.description="A Docker image for Jekyll."

RUN apk add --no-cache build-base && \
    gem install jekyll && \
    rm -rf /usr/local/bundle/cache && \
    apk del --purge -r build-base
