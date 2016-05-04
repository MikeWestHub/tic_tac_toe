require_relative 'test_helper'

class GameTest < MiniTest::Test
  def test_game_exists
    assert Game.new
  end

  def test_valid?
    subject = Game.new
    assert_equal true, subject.valid?("a3")
  end
end
