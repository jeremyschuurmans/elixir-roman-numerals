defmodule RomanNumerals do

  def convert(number) do
       # 1000 => "M",
       #  900 => "CM",
       #  500 => "D",
       #  400 => "CD",
       #  100 => "C",
       #   90 => "XC",
       #   50 => "L",
       #   40 => "XL",
       #   10 => "X",
       #    9 => "IX",
       #    5 => "V",
       #    4 => "IV",
       #    1 => "I"
    
    thousands = div(number, 1000)
    hundreds  = div(rem(number, 1000), 100)
    tens      = div(rem(number, 100), 10)
    ones      = rem(number, 10)

    numeral   = String.duplicate("M", thousands)

    cond do
      hundreds == 9 ->
        numeral = numeral <> "CM"
      hundreds == 4 ->
        numeral = numeral <> "CD"
      hundreds == 5 ->
        numeral = numeral <> String.duplicate("D", div(rem(number, 1000), 500))
      hundreds == 1 ->
        numeral = numeral <> String.duplicate("C", div(rem(number, 500), 100))
      tens     == 9 ->
        numeral = numeral <> "XC" 
      tens     == 4 ->
        numeral = numeral <> "XL"
      tens     == 5 ->
        numeral = numeral <> String.duplicate("L", div(rem(number, 100), 50))
      tens     == 1 || tens == 2 || tens == 3 ->
        numeral = numeral <> String.duplicate("X", div(rem(number, 50), 10))
      ones     == 9 ->
        numeral = numeral <> "IX"
      ones     == 4 ->
        numeral = numeral <> "IV"
      ones     == 1 || ones == 2 || ones == 3 -> 
        numeral <> String.duplicate("I", div(number, 1))
      true -> numeral
    end 
  end
end

