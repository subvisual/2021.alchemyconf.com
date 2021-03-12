defmodule Alchemy.VideoPreprocessor do
  @moduledoc """
  Preprocessor for JavaScript files that simply bypasses the file's contents.
  """

  alias Still.Preprocessor

  use Preprocessor

  @impl true
  def extension(_), do: ".js"

  @impl true
  def render(file) do
    file
    |> Still.Utils.get_input_path()
    |> File.cp!(Still.Utils.get_output_path(file))

    file
  end
end
