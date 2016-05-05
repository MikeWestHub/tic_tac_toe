require_relative 'player'
require_relative 'board'
require "pry"

class Game
  def initialize
    @board = Board.new
  end

  def create_player
    puts "Player 1, you will be X. Please enter your name."
    Player.new(gets.chomp, "X")
  end

  def play
    @player_1 = create_player
    get_players_move(@player_1)
  end

  def valid?(input)
    @valid_input = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
    if @valid_input.include?(input)
      true
    else
      puts "Invalid selection."
      false
    end
  end

  def get_players_move(player)
    input = nil
    until valid?(input)
      input = player.select_move
    end
  end
end
