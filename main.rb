require_relative './lib/board.rb'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

b = Board.new
b.create
b.render
game = Game.new(b, Player.new(:white), Player.new(:black))
game.play