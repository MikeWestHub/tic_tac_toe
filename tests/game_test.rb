require_relative 'test_helper'

class GameTest < MiniTest::Test
  def test_game_exists
    assert Game.new
  end
end
