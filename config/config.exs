import Config

alias Still.Preprocessor.{
  AddContent,
  EEx,
  OutputPath,
  Save
}

config :still,
  dev_layout: false,
  input: Path.join(Path.dirname(__DIR__), "priv/site"),
  output: Path.join(Path.dirname(__DIR__), "_site"),
  preprocessors: %{
    ".scss" => [AddContent, EEx, Alchemy.SassPreprocessor, OutputPath, Save]
  },
  pass_through_copy: ["public"]

import_config("#{Mix.env()}.exs")
