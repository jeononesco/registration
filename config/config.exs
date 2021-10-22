# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :registration,
  ecto_repos: [Registration.Repo]

# Configures the endpoint
config :registration, RegistrationWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "raJwF118QJwK9UwnFcDdkV806Kgx+7FUcfhD2Xrc0mw82GksIi+dL590HJRrhLeX",
  render_errors: [view: RegistrationWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Registration.PubSub,
  live_view: [signing_salt: "FqK6yx+A"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
