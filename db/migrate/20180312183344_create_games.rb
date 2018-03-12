class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.date :date
      t.integer :white_id
      t.integer :black_id
      t.string :movetext

      t.timestamps
    end
  end
end
