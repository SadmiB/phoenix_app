defmodule MyDockerApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      MyDockerApp.Repo,
      # Start the Telemetry supervisor
      MyDockerAppWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: MyDockerApp.PubSub},
      # Start the Endpoint (http/https)
      MyDockerAppWeb.Endpoint
      # Start a worker by calling: MyDockerApp.Worker.start_link(arg)
      # {MyDockerApp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MyDockerApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    MyDockerAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
