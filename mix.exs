defmodule App.MixProject do
  use Mix.Project

  def project do
    [
      app: :app,
      version: "1.5.3",
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {App.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.5.8"},
      {:phoenix_ecto, "~> 4.1"},
      {:ecto_sql, "~> 3.4"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_html, "~> 2.11"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:phoenix_live_dashboard, "~> 0.2.0"},
      {:telemetry_metrics, "~> 0.4"},
      {:telemetry_poller, "~> 0.4"},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.4.1"},
      {:poison, "~> 2.0"},
      {:plug_crypto, "~> 1.2"},
      {:elixir_xml_to_map, "~> 1.0"},
      {:ink, "~> 1.0"},
      {:poolboy, "~> 1.0"},
      {:faker, "~> 0.16.0"},
      {:uuid, "~> 1.0"},
      {:iptools, "~> 0.0.2"},
      {:bcrypt_elixir, "~> 1.0"},
      {:ex_aws, "~> 1.0"},
      {:csv, "~> 1.4"},
      {:base64url, "~> 1.0"},
      {:tesla, "~> 1.4"},
      {:meck, "~> 0.9.2"},
      {:joken, "~> 1.3"},
      {:quickrand, "~> 1.0"},
      {:bamboo, "~> 1.0"},

      # ping to wake the ("Free") Heroku dyno: https://github.com/dwyl/ping
      {:ping, "~> 1.0.1"},

      # Test Code Coverage:
      {:excoveralls, "~> 0.12.2", only: :test}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get", "ecto.setup", "cmd npm install --prefix assets"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
