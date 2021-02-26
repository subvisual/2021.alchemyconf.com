defmodule Alchemy.SassPreprocessor do
  use Still.Preprocessor

  @impl true
  def extension(_) do
    ".css"
  end

  @impl true
  def render(file) do
    {:ok, content} =
      Still.Utils.get_input_path(file.input_file)
      |> Sass.compile_file()

    %{file | content: content}
  end
end
