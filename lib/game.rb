require_relative 'player'
require_relative 'board'
require_relative 'input'

class Game
  attr_reader :player
  def initialize
    @board = Board.new
    create_player
  end

  def create_player
    puts "Player 1, you will be X. Please enter your name."
    @player = Player.new(gets.chomp, "X")
  end

  def select_move
    puts "#{player.name}, pick a space by specifying the letter and number, ie: A1."
    Input.new(gets.chomp)
  end
end

game = Game.new
game.select_move
