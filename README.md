# Elphrona
Elixirs meddling

### 

mix new ** app name **

mix compile
mix run

mix run -e Dictionary.hello (app name.function right?)
iex -S mix (start running mix then come to  )

elixir lib/nameoffile.ex

c "lib/dictionary.ex"

In IEX:
  r Module will recompile the file

whatever/1 whatever/2 whatever/3 (/x number arguments for the function and it is called ariety)

r Dictionary - finds file and does the C command

ec -l assets/words.txt (see how many words)  *** doesn't work on my MAC ***

split/(number) name / arity (1, 2, 3, etc) 

String.split(eg, !r/\n/)

String.split(eg, ~r/\n/, trim:true) strips out quotes

string.split(words, !r/\n/, trim:true)

### save to variable words = v(-1)

mix ins / you can say a list, map are things you can cycle through

Dictionary.word_list
words = v(-1)
Enum.random(words)

Dictionary.random_word

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

*** |> Pipelines make your code more functional ***

@Modules4Attribute

a = [2, 3]
b = [ 1 | a ]

signature of function using @spec

@type = used to define a type


## Dialyzer



## Dialyxir

mix deps.get

### Help on Hangmans.new_game

h Hangmans.new_game

t Hangmans.Impl.Game.t


# Prag Studio course notes

request = """
...(1)> GET /wildthings HTTP/1.1
...(1)> Host: example.com
...(1)> User-Agent: ExampleBrowser/1.0
...(1)> Accept: */*
...(1)> 
...(1)> """

lines = string.split(request, "\n")

first_line = List.first(lines)

first_line = request |> String.split("\n") |> List.first

parts = String.split(first_line, " " )  

Enum.at(parts, 0)

### Pattern Matching
a = 1 ** = in Elixir is not equal is called the "match" operator **

Elixir tries make the left side equal to the right side

  left is a pattern matchning right 
  - [last, 2, three] = [1, 2, 3]
  - last = 1, three = 3

  atoms always begine with a :

  . notation conv.whatever
  (only works if keys are atoms)

  = is a match operator
  Elixir are data structures are immutable...can't change them transform them to a new structure
  Map.put returns a new version of conv

  rebind conv by putting it as a variable
  conv = Map.put(conv, :resp_body, "Bears")

  


