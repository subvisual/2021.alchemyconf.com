defmodule Alchemy.SassPreprocessor do
  use Still.Preprocessor

  @impl true
  def render(%{content: content} = file) do
    {:ok, content} = Sass.compile(content)

    %{file | content: content, extension: ".css"}
  end
end
