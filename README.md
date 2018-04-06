# README

Chess Service

* docker-compose build
* docker-compose up

In another terminal create and migrate db

* docker-compose run web rails db:create
* docker-compose run web rails db:migrate
* docker-compose run web rails db:seed (optional)

usage:
* /players
* /games

REST API with CRUD operations for Chess games and players.
Provides move validation
Supports JSON
