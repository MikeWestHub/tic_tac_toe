class Board
  attr_reader :open_board
  def open_board
    board_string = <<~HEREDOC

              |       |
    A         |       |
       _______|_______|_______
              |       |
    B         |       |
       _______|_______|_______
              |       |
    C         |       |
              |       |
          1       2       3
    HEREDOC

    #board_string.gsub("A2", " X")
  end
end

game = Board.new
puts game.open_board
