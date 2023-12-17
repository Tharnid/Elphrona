defmodule Hangmans.Impl.Game do
    
    # type for a structure
    @type t :: %Hangmans.Impl.Game{
        turns_left: integer,
        game_state: Hangmans.state,
        letters: list(String.t),
        used: MapSet.t(String.t)
    }

    defstruct(
        turns_left: 6,
        game_state: :initializing,
        letters: [],
        used: MapSet.new(), # MapSet is a set of unique values
        # struct is a map with a defined set of keys
    )
 
    def new_game do
        # only used in this code
        %Hangmans.Impl.Game{
            letters: Dictionary.random_word() |> String.codepoints(),
        } # returns a struct from above
    end
end