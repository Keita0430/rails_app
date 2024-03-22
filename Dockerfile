FROM ruby:3.2.2

WORKDIR /rails_app

COPY Gemfile /rails_app/Gemfile
COPY Gemfile.lock /rails_app/Gemfile.lock

RUN gem install bundler -v 2.4.10
RUN bundle install

COPY . /rails_app
COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

CMD ["rails", "server", "-b", "0.0.0.0"]