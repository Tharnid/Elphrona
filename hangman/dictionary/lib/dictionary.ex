defmodule Dictionary do
  # def hello do
  #   IO.puts "Hello world, from Elixir and it is wonderful!!!"
  # end

  def word_list do

    words = File.read!("assets/words.txt")
    String.split(words, ~r/\n/, trim: true)

  end

  def random_word do
    Enum.random(word_list())
  end


end
