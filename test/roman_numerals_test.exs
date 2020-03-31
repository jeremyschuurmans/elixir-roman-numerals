defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "when passed in a value that directly maps to a numeral, it returns the numeral" do
    assert RomanNumerals.convert(1000) == "M"
    assert RomanNumerals.convert(900)  == "CM"
    assert RomanNumerals.convert(500)  == "D"
    assert RomanNumerals.convert(400)  == "CD"
  end
end
