json.extract! game, :id, :date
json.extract! params

json.white do
  json.id game.white.id
  json.title game.white.title
  json.name game.white.name
end

json.black do
  json.id game.black.id
  json.title game.black.title
  json.name game.black.name
end

json.extract! game, :movetext, :created_at, :updated_at

if params[:embedded]
  json.post game.post
  json.comments game.comments
else
  json.post_id game.post_id
end

json.url game_url(game, format: :json)
