FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.2

RUN gem install faster_gem_script --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["faster_gem_script"]
CMD ["--help"]
