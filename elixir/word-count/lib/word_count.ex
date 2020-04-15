defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    require IEx; IEx.pry
    String.replace(sentence, ~r/_/, " ") # replace underscores with spaces
    |> String.downcase
    |> String.split("-") # split on hyphens to preserve them
    |> Enum.map( fn x -> String.replace(x, ~r/[[:punct:]]/u, "") end) # remove all other punctuation. Enable unicode on regex.
    |> Enum.join("-") # put hyphens back
    |> String.split # Split on spaces into an array
    |> Enum.group_by(&(&1)) # Group values of array into map where word is the key and the value is array of instances
    |> Enum.map(fn {k,v} -> {k, Enum.count(v)} end) # Returns array of tuples with word and count
    |> Enum.into(%{}) # Convert tuples into map
  end
end
