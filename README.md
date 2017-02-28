# Hot Reads

Hot Reads is an app that aggregates popular links that users have stored and read in their URLockBox app. To see this app in production, visit [https://murmuring-lake-24503.herokuapp.com/](https://murmuring-lake-24503.herokuapp.com/)

## Setup

This app uses ruby version 2.3.1,  Rails 5.0.0.1, and a Postgres database

This app uses RabbitMQ for sending data. To configure your own queue, update the settings in `app/services/bunny_service.rb` and in `config/initializers/bunny_initializer.rb`

### Installation

 - clone down this repo `git clone git@github.com:epintozzi/hot_links_final.git`
 -  `cd hot_links_final`
 -  `bundle install`
 - `rake db:create db:migrate`
 - to run locally, `rails s` and visit http://localhost:3000


### Testing

- Testing is done with Rspec and capybara and is installed with Bundle.
- Run `rspec` in your terminal to run the test suite

## Using the app

This app receives data from URLockBox and shows a top ten of all links from all URLockBox users.
