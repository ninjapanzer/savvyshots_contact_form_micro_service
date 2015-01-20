defmodule ContactFormMicroService.Mixfile do
  use Mix.Project

  def project do
    [app: :contact_form_micro_service,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {ContactFormMicroService, []},
     applications: [:phoenix, :cowboy, :logger, :json, :exrm]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.8.0"},
     {:cowboy, "~> 1.0"},
     {:mailer, github: "antp/mailer"},
     {:json, "~> 0.3.0"},
     {:exrm, "~> 0.14.16"}]
  end
end
