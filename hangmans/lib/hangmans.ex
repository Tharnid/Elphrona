defmodule Hangmans do

  # create an alias for the game module
  # alias Hangmans.Impl.Game, as: Game
  # automatically aliases as game
  alias Hangmans.Impl.Game 

  @type state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used  # atom with state of game
  # @type game :: Game.t  # type for a structure
  @opaque game :: Game.t # defines a type whose contents are not usable outside of this module 
  @type tally :: %{ 
    turns_left: integer,
    game_state: state,
    letters: list(String.t),
    used: list(String.t)
  }

  @spec new_game() :: game  # game returns a new game 
  # delegate function to another another module
  defdelegate new_game, to: Game 

  # def new_game do
  #   Game.new_game()
  # end
  
  @spec make_move(game, String.t) :: { game, tally } # returns a tuple of game and tally
  def make_move(_game, _guess) do
  
  end
end
