defmodule MoneyBench.MixProject do
  use Mix.Project

  def project do
    [
      app: :money_bench,
      version: "0.1.0",
      elixir: "~> 1.8",
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
      {:benchee, "0.14.0"},
      {:ex_cldr, "2.2.4"},
      {:ex_cldr_currencies, "2.1.1"},
      {:ex_cldr_numbers, "2.1.1"},
      {:ex_money, "3.2.3"},
      {:jason, "1.1.2"}
    ]
  end
end
