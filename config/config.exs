# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :thermostat_live,
  ecto_repos: [ThermostatLive.Repo]

# Configures the endpoint
config :thermostat_live, ThermostatLiveWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AdDP7C8NGVm5LjTe9K4B+zAG5Bn1qjugdpvZPxo5IBBCXja9gE0oEjT0lJCiq12j",
  render_errors: [view: ThermostatLiveWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ThermostatLive.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
