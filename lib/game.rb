require_relative 'player'
require_relative 'board'
require "pry"

class Game
  attr_reader :board
  def initialize
    @board = Board.new
  end

  def create_player
    puts "Player 1, you will be X. Please enter your name."
    @player_1 = Player.new(gets.chomp, "x")
    puts "Player 2, you will be O. Please enter your name."
    @player_2 = Player.new(gets.chomp, "o")
  end

  def play
    create_player
      get_players_move(@player_1)
      get_players_move(@player_2)
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

  def game_over
  end 
end
