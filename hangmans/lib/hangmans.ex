defmodule Hangmans do

  # create an alias for the game module
  # alias Hangmans.Impl.Game, as: Game
  # automatically aliases as game
  alias Hangmans.Impl.Game 
  alias Hangmans.Type
  
  # @type game :: Game.t  # type for a structure
  @opaque game :: Game.t # defines a type whose contents are not usable outside of this module 


  @spec new_game() :: game  # game returns a new game 
  # delegate function to another another module
  defdelegate new_game, to: Game 

  # def new_game do
  #   Game.new_game()
  # end
  
  @spec make_move(game, String.t) :: { game, Type.tally } # returns a tuple of game and tally
  def make_move(_game, _guess) do
  
  end
end
