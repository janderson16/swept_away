# SweptAway

## About the app

Swept Away is an app that was inspired by those diligent civil servants handing out parking tickets. It is a directory for the street sweeping routes and schedules of the city of Boston. Once logging in with their Google account, users can visit the index page which displays every route, its scheduled day and time, and which side of the street will be swept. Alternatively, they can search by street name limiting the results. After clicking on a individual route, users can view a Google map rendering the specifics of that route. It uses the Faraday gem to hit the City of Boston's API. It makes use of Google's OAuth service to log in and Google Maps to provide a visual representation of routes. The Kaminari gem was utilized for pagination and Javascript/jQuery was implemented for the filter function. A PostgreSQL database was used to store user data. 

[Production link](https://swept-away.herokuapp.com/)


#### Stack
* Ruby 2.3.0
* Rails 5.0.0.1
* RSpec test suite w/ Capybara


## Setup

1. Clone down the repository
```$ git clone git@github.com:janderson16/swept_away.git```
1. Bundle
```$ bundle install```
1. Create database
```$ rake db:create```
1. Migrate
```$ rake db:migrate``` 
1. Seed
```$ rake db:seed```
#### Run Locally
1. Start server
```$ rails s```
1. visit localhost in broswer
```localhost:3000``` 

#### Run Test Suite

1. ```rake db:test:prepare```
1. ```$ rspec```
---
