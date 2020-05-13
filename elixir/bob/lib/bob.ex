defmodule Bob do
  def hey(input) do
    input = Regex.replace(~r/[[:space:]]/, input, "")
    cond do
      silence?(input) -> "Fine. Be that way!"
      forceful_question?(input) -> "Calm down, I know what I'm doing!"
      yelling?(input) -> "Whoa, chill out!"
      question?(input) -> "Sure."
      true -> "Whatever."
    end
  end

  def silence?(input) do
    input == ""
  end

  def forceful_question?(input) do
    yelling?(input) && question?(input)
  end

  def yelling?(input) do
    Regex.replace(~r/[^[:alpha:]]/, input, "")
    |> String.match?(~r/^[[:upper:]]+$/)
  end

  def question?(input) do
    String.match?(input, ~r/\?$/)
  end
end
