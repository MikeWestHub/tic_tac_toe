require_relative 'test_helper'

class GridTest < MiniTest::Test
  def test_grid_exists
    assert Grid.new
  end
end
