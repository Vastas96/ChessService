json.extract! game, :id, :date, :white_id, :black_id, :movetext, :post_id, :comments, :created_at, :updated_at
json.url game_url(game, format: :json)
