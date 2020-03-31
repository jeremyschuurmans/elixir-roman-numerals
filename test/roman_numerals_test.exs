defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "it converts 1000 to 'M'" do
    assert RomanNumerals.convert(1000) == "M"
  end
end
