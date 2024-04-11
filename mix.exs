defmodule BobDockerList.MixProject do
  use Mix.Project

  def project do
    [
      app: :bob_docker_list,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.3.0"},
      {:hackney, "~> 1.11"},
      # Uncomment the dependency below as a temporary workaround if you encounter the following error during
      #   `mix compile`:
      # Error: could not compile dependency :ssl_verify_fun, "mix compile" failed.
      # Fix taken from: https://github.com/edgurgel/httpoison/issues/46#issuecomment-1599870487
      # {:ssl_verify_fun, ">= 0.0.0", manager: :rebar3, override: true}
    ]
  end
end
