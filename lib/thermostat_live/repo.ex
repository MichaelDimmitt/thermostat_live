defmodule ThermostatLive.Repo do
  use Ecto.Repo,
    otp_app: :thermostat_live,
    adapter: Ecto.Adapters.Postgres
end
