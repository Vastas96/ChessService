class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :title

      # add_index :players, :name, unique: true

      t.timestamps
    end
  end
end
