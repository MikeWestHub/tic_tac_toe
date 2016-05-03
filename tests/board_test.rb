require 'minitest/autorun'
require './lib/grid'

class GridTest < MiniTest::Test
  def test_board_exists
    assert Grid.new
  end
end
