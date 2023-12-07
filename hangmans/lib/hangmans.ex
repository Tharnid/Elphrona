defmodule Hangmans do

  @type state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used  # atom with state of game
  @type game :: any # type is any
  @type tally :: %{ 
    turns_left: integer,
    game_state: state,
    letters: list(String.t),
    used: list(String.t)
  }

  @spec new_game() :: game  # game returns a new game 
  def new_game do

  end
  
  @spec make_move(game, String.t) :: { game, tally } # returns a tuple of game and tally
  def make_move(_game, _guess) do
  
  end
end
