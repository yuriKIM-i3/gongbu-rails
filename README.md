# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

유닛테스트, 통합테스트(rspec으로)
레일즈튜토리얼 복습

rails s -b 0.0.0.0

rails g model User name:string password:string role:string

rails db:migrate

rails db:seed

bundle exec rspec