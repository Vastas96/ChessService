require 'game_parser'

class MoveValidator < ActiveModel::Validator
  def validate(record)
    moves = GameParser.get_move_array(record.movetext)
    if !valid?(moves)
      record.errors[:base] << "Movetext contains invalid chess moves"
    end
  end

  def valid?(moves)
    game = PGN::Game.new(moves)
    begin
      game.fen_list
    rescue
      return false
    end
    return true
  end
end