defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    numeral(number, "")
  end

  def numeral(number, string) when div(number, 10) > 0 do
    r = rem(number, 10)
    s = string <> String.duplicate("X", div(number, 10))
    numeral(r, s)
  end

  def numeral(number, string) when div(number, 9) == 1 do
    string <> "IX"
  end

  def numeral(number, string) when div(number, 5) == 1 do
    r = rem(number, 5)
    numeral(r, string <> "V")
  end

  def numeral(number, string) when div(number, 4) == 1 do
    string <> "IV"
  end

  def numeral(number, string) do
    string <> String.duplicate("I", number)
  end
end
