require_relative "test_helper"

class PlayerTest < MiniTest::Test
  def test_player_exists
    assert Player
  end

  def test_player_can_initialize_with_name
    bob = Player.new("bob", "O")
    assert_equal "bob", bob.name
  end

  def test_player_has_game_piece
    new_player = Player.new("Bob", "X")
    assert_equal "X", new_player.game_piece
  end
end
