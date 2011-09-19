# Sohbet [![Build Status](https://secure.travis-ci.org/HusseinMorsy/sohbet.png)](http://travis-ci.org/HusseinMorsy/sohbet)


Sohbet is a simple meeting and collaboration web application for software projects.
The name "Sohbet" is turkish and means conversation.
The development is still at the beginning. The web application should
have at least the following features:

* Meeting management
* Messages with comments
* Action item and Issue management
* Documentation management with Upload functionlity
* Multimarkdown support for online rich formated documents
* ...

## Used technologies

* Application Framework :[Ruby on Rails
  3.1]("http://www.rubyonrails.org")
* Databases: [PosgreSQL]("http://www.postgresql.org/"), [SQLite3]("http://www.sqlite.org/") or [MySQL]("http://www.mysql.com")
* Testing: Outside-in-testing with  [Cucumber]("http://cukes.info/") for
  the integration tests and [rspec](https://www.relishapp.com/rspec) for the unit-test

## Running tests

    gem install bundler
    bundle install
    cp config/database.yml.example config/database.yml
    rake


After each commit the tests are run by travis ci, a continious
integration service for open source projects.

Actual Test Result with travis ci: [![Build Status](https://secure.travis-ci.org/HusseinMorsy/sohbet.png)](http://travis-ci.org/HusseinMorsy/sohbet)

For development it is recommended to use [Guard](https://github.com/guard/guard). On a mac install the gems rb-fsevent and growl_notify by hand with

    gem install rb-fsevent growl_notify

## Supported Ruby versions

This library aims to support and is tested against the following Ruby implementations:

* Ruby 1.8.7
* Ruby 1.9.2
* Ruby 1.9.3
* Ruby Ruby Enterprise Edition (REE)

## Supoorted Relational Database Systems:

* [Mysql](http://www.mysql.com/)
* [PostreSQL](http://www.postgresql.org/)
* [SQLite3](http://www.sqlite.org/)

## Copyright

Copyright (c) 2011 Hussein Morsy and Contributors
