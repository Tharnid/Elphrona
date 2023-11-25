defmodule Lists do
    
    # [] = 0
    # [ 1 ,3, 5 ] => 3

    def len([]) , do: 0
    def len([_h|t]), do: 1 + len(t)

    # [] = 0
    # [ 1 ,3, 5 ] => 9

    def sum([]), do: 0
    def sum([h|t]), do: h + sum(t)

    # [ 1 , 2, 3 ] => [ 1, 4, 9 ]
    def square([]), do: []
    def square([h|t]), do: [ h*h | square(t) ]

    def double([]), do: []
    def double([h|t]), do: [ 2*h | double(t) ]

    # def map(list, func), do: [ ]
    def map([], _func), do: []
    def map([h|t], func), do: [ func.(h) | map(t, func) ]

end