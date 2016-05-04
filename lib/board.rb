class Board
  attr_reader :open_board
  def initialize
      @open_board = {
        a1: " ", a2: " ", a3: " ",
        b1: " ", b2: " ", b3: " ",
        c1: " ", c2: " ", c3: " "
      }
  end

  def grid_view
    puts "    1     2     3    "
    puts "A  #{@open_board[:a1]}   |  #{@open_board[:a2]}  |   #{@open_board[:a3]} "
    puts "  -----|-----|-----"
    puts "B  #{@open_board[:b1]}   |  #{@open_board[:b2]}  |   #{@open_board[:b3]} "
    puts "  -----|-----|-----"
    puts "C  #{@open_board[:c1]}   |  #{@open_board[:c2]}  |   #{@open_board[:c3]} "
  end

end

game = Board.new
puts game.grid_view
