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
    {numeral, 0} =
      for {numeral, val} <- @numerals, reduce: {"", number} do
        {acc_str, acc_val} ->
          {
            acc_str <> String.duplicate(numeral, Integer.floor_div(acc_val, val)),
            Integer.mod(acc_val, val)
          }
      end

    numeral
  end
end
