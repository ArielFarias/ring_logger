defmodule LoggerCircularBuffer.MixProject do
  use Mix.Project

  def project do
    [
      app: :logger_circular_buffer,
      version: "0.2.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      docs: docs(),
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps()
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp docs do
    [extras: ["README.md"],
     main: "readme"]
  end

  defp deps do
    [{:ex_doc, "~> 0.15", only: :dev}]
  end

  defp description do
    """
    A circular buffer backend for Elixir Logger with support for IO streaming.
    """
  end

  defp package do
    [maintainers: ["Justin Schneck"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/nerves-project/logger_circular_buffer"}]
  end
end
