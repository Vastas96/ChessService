# README

Chess Service with Comments

* docker-compose up (--build) -d

* docker-compose run web rails db:create
* docker-compose run web rails db:migrate
* docker-compose run web rails db:seed (optional)

usage:
* /players
* /games

* REST API with CRUD operations for Chess games and players.
* Provides move validation
* Supports JSON by adding .json to url

* Added fellow colleague's microservice:
`https://github.com/ExtraCurricular/UsersPostsComments`

* PATCH /games/:id.json { "comment": "Your comment here" }
* GET /games.json?embedded=true
* GET /games/:id.json?embedded=true

