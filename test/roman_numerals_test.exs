defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "it converts 1000 to 'M'" do
    assert RomanNumerals.convert(1000) == "M"
  end

  test "it converts 900 to 'CM'" do
    assert RomanNumerals.convert(900) == "CM"
  end

  test "it converts 500 to 'D'" do
    assert RomanNumerals.convert(500) == "D"
  end

  test "it converts 400 to 'CD'" do
    assert RomanNumerals.convert(400) == "CD"
  end
end
