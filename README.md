# Super Blog

### Setup

* Install ruby 2.5.9.  If using [rbenv](https://github.com/rbenv/rbenv) then `rbenv install 2.5.9`
* Install [bundler](https://bundler.io/). `gem install bundler`
* Install dependencies for this application: `bundle install`
* Install Google Chrome which is used in the system tests


### Run Local Server

Create database and load demo data...
```
bundle exec rake db:drop db:create db:migrate db:setup
```

Run server and access it on localhost:3000

```
bundle exec rails s
```

### Pre-Screening
Refer to the TODO.md file in this repo. Implement features #1 and #2 during pre-screening.
