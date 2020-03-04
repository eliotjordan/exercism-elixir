defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    keys = String.split(sentence)
    counts = Map.new(keys, fn(x) -> {x, 0} end)
    Enum.each(keys, fn(s) -> counts[s] = counts[s] + 1 end)
  end
end
