require 'minitest/autorun'
require './lib/board'

class BoardTest < MiniTest::Test
  def test_board_exists
    assert Board.new
  end
end
