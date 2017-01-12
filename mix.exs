defmodule MyProject.Mixfile do
  use Mix.Project

  def project do
    [app: :my_project,
     version: "0.0.1",
     elixir: "~> 0.13.0",
     deps: deps()]
  end

  def application, do: []

  defp deps do
    [{:number, "~> 0.5.0"}]
  end
end
