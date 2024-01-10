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

    @spec make_move(t, String.t) :: { t, Type.tally } # returns a tuple of game and tally
    def make_move(game = %{ game_state: state }, _guess) when state in [:won, :lost] do  
        game
        |> return_with_tally()
    end

    def make_move(game, guess) do
        accept_guess(game, guess, MapSet.member?(game.used, guess))
        |> return_with_tally()
    end

    ############################################################################################################

    defp score_guess(game, _good_guess = true) do
        # if guessed all letters game is one otherwise good guess
        # %{ game | game_state: :good_guess }
        new_state =  maybe_won(MapSet.subset?(MapSet.new(game.letters), game.used))
        %{ game | game_state: new_state }
    end

    defp score_guess(game, _bad_guess) do
        # turns left is 1 game is over | dec turns_left bad guess
        game 
        # %{ game | game_state: :good_guess }
    end

    ############################################################################################################

    defp accept_guess(game, _guess, _already_used = true) do
        # letter already used
        %{ game | game_state: :already_used }
        |> score_guess(Enum.member?(game.letters, guess))
    end

    defp accept_guess(game, guess, _already_used) do
        # good guess
        %{ game | used: MapSet.put(game.used, guess) }
        # %{ game | used: MapSet.put(game.used, guess), game_state: :good_guess }
    end

    ############################################################################################################

    defp tally(game) do # private function
        %{ 
            turns_left: game.turns_left,
            game_state: game.game_state,
            letters: [], # game.letters,
            used: game.used |> MapSet.to_list |> Enum.sort
            # used: MapSet.to_list(game.used)
        }
    end

    defp return_with_tally(game) do # private function
        { game, tally(game) }
    end

    defp maybe_won(true), do: :won

    defp maybe_won(_), do: :good_guess
end