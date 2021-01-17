defmodule RomanNumerals do
  @numerals [
    {"M", 1000},
    {"CM", 900},
    {"D", 500},
    {"CD", 400},
    {"C", 100},
    {"XC", 90},
    {"L", 50},
    {"XL", 40},
    {"X", 10},
    {"IX", 9},
    {"V", 5},
    {"IV", 4},
    {"I", 1}
  ]

  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    {roman, 0} =
      Enum.reduce(@numerals, {"", number}, fn r, acc ->
        RomanNumerals.numeralize(r, acc)
      end)

    roman
  end

  def numeralize({numeral, val}, {acc, remaining}) do
    times = Integer.floor_div(remaining, val)

    {
      acc <> String.duplicate(numeral, times),
      Integer.mod(remaining, val)
    }
  end
end
