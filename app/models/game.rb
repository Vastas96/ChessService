class Game < ApplicationRecord
  validates :white, presence: true
  validates :black, presence: true
  validates :movetext, presence: true
  validates_with MoveValidator

  belongs_to :white, class_name: 'Player', foreign_key: 'white_id'
  belongs_to :black, class_name: 'Player', foreign_key: 'black_id'
end
