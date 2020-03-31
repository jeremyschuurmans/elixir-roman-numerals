defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "it returns 'M' for 1000" do
    assert RomanNumerals.convert(1000) == "M"
  end

  test "it returns 'CM' for 900" do
    assert RomanNumerals.convert(900) == "CM"
  end
end
