# README

Chess Service

* docker-compose build
* docker-compose up

In another terminal create and migrate db

* docker-compose run web rails db:create
* docker-compose run web rails db:migrate
* docker-compose run web rails db:seed (optional)
