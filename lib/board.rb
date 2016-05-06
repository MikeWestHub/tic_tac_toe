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

  def winning_positions
      [
        [:a1, :a2, :a3],
        [:b1, :b2, :b3],
        [:c1, :c2, :c3],
        [:a1, :b1, :c1],
        [:a2, :b2, :c2],
        [:a3, :b3, :c3],
        [:a1, :b2, :c3],
        [:c1, :b2, :a3]
      ]
  end


  def moves_for_sign(sign)
    @open_board.select do |key, value|
      value == sign
    end.keys
  end

  def empty?
    open_board.values.all? { |e| e == " " }
  end

  def full?
    open_board.values.each do |e|
      if e != " "
        return true
      end
    end
  end

  def make_move(args)
    if open_board[args[:pos]] == " "
      open_board[args[:pos]] = args[:sign]
    else
      false
    end
  end

  def winner(sign)
    winning_positions.any? do |winning_position|
      (moves_for_sign(sign) & winning_position).size == 3
    end
  end

  def draw(sign)
    full? && winner(sign) == false
  end

end
