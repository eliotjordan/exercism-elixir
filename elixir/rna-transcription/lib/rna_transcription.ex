defmodule RnaTranscription do
  @doc """
  Transcribes a single character representing a DNA nucleotide to RNA

  ## Examples

  iex> RnaTranscription.to_rna('G')
  'C'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(char) when length(char) == 1 do
    if char == 'G' do
      'C'
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
  end
end
