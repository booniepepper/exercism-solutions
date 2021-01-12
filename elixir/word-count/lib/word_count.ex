defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> clean
    |> String.split()
    |> Enum.frequencies()
  end

  defp clean(dirty) do
    dirty
    |> String.downcase()
    |> String.replace(~r/_/, " ")
    |> String.graphemes()
    |> Enum.filter(&Regex.match?(~r/[\w- ]/, &1))
    |> Enum.join()
  end
end
