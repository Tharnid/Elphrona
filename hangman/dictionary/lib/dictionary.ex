defmodule Dictionary do
  # @word_list


  def word_list do

  # magic operator <|
    "assets/words.txt"
    |> File.read!()
    |> String.split(~r/\n/, trim: true)
    end

  def random_word do
    word_list()
    |> Enum.random()
  end


end
