# NFChief

[![Build Status](https://travis-ci.com/rikola/nfchief.svg?token=UFA1wpQtMzhtTiyRH67s&branch=master)](https://travis-ci.com/rikola/nfchief)
[![Code Climate](https://codeclimate.com/repos/56fad61ee9a03d00730017aa/badges/07900d6b4205e214026d/gpa.svg)](https://codeclimate.com/repos/56fad61ee9a03d00730017aa/feed)

----

## Introduction

NFChief allows data collection and remote management of deployed NFC tags. This is useful for people with a need to know the impact of their physically deployed posters, signs, or advertisements. It can also be useful for attaching any web resource to a physical object, such as placing an NFC tag on an appliance with a URL to the appliance manual.

### Requirements:
* Ruby version: 2.2.3
* Rails 4
* MySql (for production)

### Setup:
1. Clone the repository and run `bundle install`
2. Run `bundle exec rake db:migrate` to set up the development database.

### Running the test suite:
1. Run `bundle exec rake test`

### Deployment:
1. Deploy through the deployment branch of the repository. It is locked to everyone except @rikola so make a pull request.