# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :contact_form_micro_service, ContactFormMicroService.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NCcdI7d8uQQRBJcYHKNBe5BoZ3/WzcrzMfT70rTALAhU4kVRg/ldE3wjkVI0Rk94",
  debug_errors: false,
  server: true

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mailer, templates: "web/templates/savvyshots"

config :mailer, :smtp_client,
  server: "127.0.0.1",
  port: 1025,
  hostname: "localhost",
  transport: :smtp

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
