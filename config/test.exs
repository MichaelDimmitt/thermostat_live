use Mix.Config

# Configure your database
config :thermostat_live, ThermostatLive.Repo,
  username: "postgres",
  password: "postgres",
  database: "thermostat_live_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :thermostat_live, ThermostatLiveWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
