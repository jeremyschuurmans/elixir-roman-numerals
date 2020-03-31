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
      true -> numeral
    end 
  end
end

