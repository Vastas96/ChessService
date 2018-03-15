class Game < ApplicationRecord
  validates :white, presence: true
  validates :black, presence: true

  belongs_to :white, class_name: 'Player', foreign_key: 'white_id'
  belongs_to :black, class_name: 'Player', foreign_key: 'black_id'

  def self.valid?(moves)
    game = PGN::Game.new(moves)
    begin
      game.fen_list
    rescue
      return false
    end
    return true
  end
end
