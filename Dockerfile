FROM fluent/fluentd:v1.15.3-debian-1.0

USER root

RUN apt-get update &&\
    apt-get install curl -y &&\
    gem install fluent-plugin-elasticsearch --no-document --version 5.2.4

USER fluent
