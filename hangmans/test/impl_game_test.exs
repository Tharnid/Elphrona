defmodule HangmansImplGameTest do
    use ExUnit.Case

    # alias Game
    alias Hangmans.Impl.Game

    test "new game returns structure" do
        game = Game.new_game()

        assert game.turns_left == 6
        assert game.game_state == :initializing
        assert length(game.letters) > 0
    end

    test "new game returns correct word" do
        game = Game.new_game("wombat")

        assert game.turns_left == 6
        assert game.game_state == :initializing
        assert game.letters == ["w", "o", "m", "b", "a", "t"]
    end
end