defmodule Alchemy.SassPreprocessor do
  use Still.Preprocessor

  @impl true
  def extension(_) do
    ".css"
  end

  @impl true
  def render(%{content: content} = file) do
    {:ok, content} = Sass.compile(content)

    %{file | content: content}
  end
end
