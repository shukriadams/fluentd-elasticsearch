FROM fluent/fluentd:v1.15.3-debian-1.0

USER root

RUN apt-get update &&\
    apt-get install curl -y &&\
    gem install elasticsearch -v 7.6 &&\
    gem install fluent-plugin-elasticsearch &&\
    gem install fluent-plugin-rewrite-tag-filter &&\
    gem install fluent-plugin-multi-format-parser 

USER fluent
