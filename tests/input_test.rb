require_relative 'test_helper'

class InputTest < Minitest::Test
  def test_input_can_initialize
    move = Input.new("X")
    assert_equal "X", move.user_input
  end
end
