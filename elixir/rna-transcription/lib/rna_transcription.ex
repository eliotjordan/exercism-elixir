defmodule RnaTranscription do
  @doc """
  Transcribes a single character representing a DNA nucleotide to RNA

  ## Examples

  iex> RnaTranscription.to_rna('G')
  'C'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(char) when length(char) == 1 do
    case char do
      'G' -> 'C'
      'C' -> 'G'
      'T' -> 'A'
      'A' -> 'U'
    end
  end

  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna, fn(c) -> to_rna([c]) end)
    |> Enum.concat
  end
end
