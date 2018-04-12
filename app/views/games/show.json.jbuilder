json.white do
  json.name @game.white.name
  json.url url_for(@game.white, format: :json)
end

json.black do
  json.name @game.black.name
  json.url url_for(@game.black, format: :json)
end

json.movetext @game.movetext

json.(@game, :created_at, :updated_at)

json.url url_for(@game, format: :json)

