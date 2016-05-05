require './lib/board.rb'
require './lib/player.rb'
require './lib/game.rb'

new_game = Game.new
pick = new_game.play
puts pick 
