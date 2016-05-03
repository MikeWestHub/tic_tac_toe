class Board
  attr_reader :open_grid
  def open_grid
    <<~HEREDOC
       ____________________
      |      |      |      |
      |  A1  |  A2  |  A3  |
      |______|______|______|
      |      |      |      |
      |  B1  |  B2  |  B3  |
      |______|______|______|
      |      |      |      |
      |  C1  |  C2  |  C3  |
      |______|______|______|
    HEREDOC
  end
end

game = Grid.new
puts game.open_grid
