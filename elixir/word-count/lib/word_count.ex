defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    String.replace(sentence, ~r/[[:punct:]]/, "")
    |> String.split # Split on spaces into an array
    |> Enum.group_by(&(&1)) # Group values of array into map where word is the key and the value is array of instances
    |> Enum.map(fn {k,v} -> {k, Enum.count(v)} end) # Returns array of tuples with word and count
    |> Enum.into(%{}) # Convert tuples into map
  end
end
