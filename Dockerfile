FROM ruby:2.6.1
ENV LANG=C.UTF-8 \
    APP_HOME=/rails-mysql

WORKDIR ${APP_HOME}
