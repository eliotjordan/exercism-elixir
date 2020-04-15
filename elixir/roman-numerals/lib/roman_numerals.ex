defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    numeral(number, "")
  end

  def numeral(number, string) when div(number, 1000) > 0 do
    r = rem(number, 1000)
    s = String.duplicate("M", div(number, 1000))
    numeral(r, string <> s)
  end

  def numeral(number, string) when div(number, 900) == 1 do
    r = rem(number, 900)
    numeral(r, string <> "CM")
  end

  def numeral(number, string) when div(number, 500) == 1 do
    r = rem(number, 500)
    numeral(r, string <> "D")
  end

  def numeral(number, string) when div(number, 400) == 1 do
    r = rem(number, 400)
    numeral(r, string <> "CD")
  end

  def numeral(number, string) when div(number, 100) > 0 do
    r = rem(number, 100)
    s = String.duplicate("C", div(number, 100))
    numeral(r, string <> s)
  end

  def numeral(number, string) when div(number, 90) == 1 do
    r = rem(number, 90)
    numeral(r, string <> "XC")
  end

  def numeral(number, string) when div(number, 50) == 1 do
    r = rem(number, 50)
    numeral(r, string <> "L")
  end

  def numeral(number, string) when div(number, 40) == 1 do
    r = rem(number, 40)
    numeral(r, string <> "XL")
  end

  def numeral(number, string) when div(number, 10) > 0 do
    r = rem(number, 10)
    s = String.duplicate("X", div(number, 10))
    numeral(r, string <> s)
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
