defmodule Hangmans.Impl.Game do
    
    alias Hangmans.Type

    # type for a structure
    @type t :: %__MODULE__{
        turns_left: integer,
        game_state: Type.state,
        letters: list(String.t),
        used: MapSet.t(String.t)
    }

    defstruct( 
        turns_left: 6,
        game_state: :initializing,
        letters: [],
        used: MapSet.new()# MapSet is a set of unique values
        # struct is a map with a defined set of keys
    )
 
    # specs are used to document the function
    @spec new_game() :: t  # game returns a new game

    def new_game do
        # only used in this code
        #%__MODULE__{
        #    letters: Dictionary.random_word() |> String.codepoints(),
        #}  returns a struct from above

        new_game(Dictionary.random_word)
    end

    @spec new_game(String.t) :: t  # game returns a new game
    def new_game(word) do
        # only used in this code
        %__MODULE__{
            letters: word |> String.codepoints(),
        } # returns a struct from above
    end
end