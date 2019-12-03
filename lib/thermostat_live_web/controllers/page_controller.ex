defmodule ThermostatLiveWeb.PageController do
  use ThermostatLiveWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
