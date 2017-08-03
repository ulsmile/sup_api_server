FROM ruby:2.3.1
RUN mkdir /myapp
ENV APP_HOME /myapp
WORKDIR $APP_HOME/
RUN gem install bundler --pre
ADD ./supapi/Gemfile Gemfile
RUN bundle install --jobs=4 --system
WORKDIR $APP_HOME/
ADD ./supapi $APP_HOME/
