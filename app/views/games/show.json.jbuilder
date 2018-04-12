json.partial!

json.white do
  json.name @game.white.name
  json.url url_for(@game.white)
end

json.black do
  json.name @game.black.name
  json.url url_for(@game.black)
end

json.movetext @game.movetext

json.(@game, :created_at, :updated_at)

