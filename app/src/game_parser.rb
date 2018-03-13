require 'enumerator'

class GameParser
  attr_accessor :date, :white, :black, :movetext
  def self.parse(pgn)
  	date = get(pgn, /Date/)

  	white = get(pgn, /White/)
  	black = get(pgn, /Black/)

  	white = reformat_name(white)
  	black = reformat_name(black)

    white = Player.find_or_create_by(name: white)
    black = Player.find_or_create_by(name: black)

  	movetext = get_moves(pgn).chomp
  	
  	{ date: date, white: white.id, black: black.id, movetext: movetext}
  end

  def self.get(pgn, option)
  	position = pgn.enum_for(:scan, option).map { Regexp.last_match.begin(0) }[0]

  	first = pgn.index('"', position)
  	second = pgn.index('"', first + 1)
  	pgn[first..second].delete('"')
  end

  def self.reformat_name(player)
  	player = player.delete(',')
  	split = player.split(' ')
  	split[1] + ' ' + split[0]
  end

  def self.get_moves(pgn)
  	position = pgn.enum_for(:scan, /Result/).map { Regexp.last_match.begin(0) }[0]

  	first = pgn.index('1.', position)
  	pgn[first..-1]
  end
end
