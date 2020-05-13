defmodule Bob do
  def hey(input) do
    cond do
      yelling?(input) -> "Whoa, chill out!"
      yelling?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  def yelling?(input) do
    Regex.replace(~r/[^[:alpha:]]/, input, "")
    |> String.match?(~r/^[[:upper:]]+$/)
  end
end
