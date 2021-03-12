defmodule Alchemy.TemplateHelpers do
  require Logger

  alias Still.{SourceFile, Compiler.PreprocessorError, Compiler.Incremental}

  def include_video(file) do
    with pid when not is_nil(pid) <- Incremental.Registry.get_or_create_file_process(file),
         %SourceFile{output_file: output_file} <- Incremental.Node.compile(pid) |> IO.inspect() do
      Still.Utils.get_base_url() <> "/" <> output_file
    else
      %PreprocessorError{} = e ->
        raise e

      _ ->
        Logger.error("File process not found for #{file}")
        ""
    end
  end
end
