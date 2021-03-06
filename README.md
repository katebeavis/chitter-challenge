[![Code Climate](https://codeclimate.com/github/katebeavis/chitter-challenge/badges/gpa.svg)](https://codeclimate.com/github/katebeavis/chitter-challenge) [![Test Coverage](https://codeclimate.com/github/katebeavis/chitter-challenge/badges/coverage.svg)](https://codeclimate.com/github/katebeavis/chitter-challenge) [![Build Status](https://travis-ci.org/katebeavis/chitter-challenge.svg?branch=master)](https://travis-ci.org/katebeavis/chitter-challenge)
# Chitter

Chitter is a Twitter clone that allows users to post messages ('peeps') to a public stream. It was built as a weekend challenge at the end of my fourth week at Makers Academy.

Our brief was to implement the following features:

- A user will be able to sign up to the service.
- The user can log in and log out.
- They must be able to post messages to a public stream.
- The messages must be displayed in chronological order.
- The messages must display the users 'handle' and the time posted.

## Objectives
To understand databases, database relations and user management including the need for encrypting passwords.

Through this challenge I felt like I got a solid understanding of PostgreSQL databases and how to manage them directly through SQL.

I also feel although this kind of project would be suited better to a Rails framework, it was good to understand the benefits of a lightweight framework like Sinatra.

## Heroku & Screenshots
[Chitter Challenge](https://chitter-kate.herokuapp.com)
<div align="center">
  <img width="90%" src="public/images/chitter-header.png">
</div>
<div align="center">
  <img width="90%" src="public/images/chitter-posts.png">
</div>

## Technology
- Ruby
- Sinatra
- PostgreSQL
- Datamapper
- Bcrypt
- Rack Flash
- Capybara
- Rspec

## To Run
```
$ git clone https://github.com/katebeavis/chitter-challenge.git
$ cd chitter-challenge
$ bundle install
$ psql
$ CREATE DATABASE chitter_challenge_test
$ CREATE DATABASE chitter_challenge_development
$ \q
$ rake auto_migrate
$ rackup
Visit http://localhost:9292
```

## To Run Tests
```
$ rspec
```

