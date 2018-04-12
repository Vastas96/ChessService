class AddPostIdToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :post_id, :integer
  end
end
