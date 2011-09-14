# Sohbet

Sohbet is a simple meeting and collaboration web application for software projects.
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
* Database: [PosgreSQL]("http://www.postgresql.org/")
* Testing: [Cucumber]("http://cukes.info/")

## Running tests

    gem install bundler
    bundle install
    cp config/database.yml.example config/database.yml
    rake

## Copyright

Copyright (c) 2011 Hussein Morsy and Contributors
