import Config

alias Still.Preprocessor.{
  AddContent,
  EEx,
  Markdown,
  OutputPath,
  Save,
  URLFingerprinting,
  Image
}

config :still,
  template_helpers: [Alchemy.TemplateHelpers],
  dev_layout: false,
  input: Path.join(Path.dirname(__DIR__), "priv/site"),
  output: Path.join(Path.dirname(__DIR__), "_site"),
  preprocessors: %{
    ".mp4" => [OutputPath, Alchemy.VideoPreprocessor],
    ".scss" => [AddContent, EEx, Alchemy.SassPreprocessor, OutputPath, Save]
  },
  pass_through_copy: ["public"]

import_config("#{Mix.env()}.exs")
