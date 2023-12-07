# Elphrona
Elixirs meddling

### 

mix new ** app name **

mix compile
mix run

mix run -e Dictionary.hello (app name.function right?)
iex -S mix (start running mix then come to  )

c "lib/dictionary.ex"

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
