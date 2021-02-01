# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :my_docker_app,
  ecto_repos: [MyDockerApp.Repo]

# Configures the endpoint
config :my_docker_app, MyDockerAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aAAbF5bH16hhB+9BM8Izo30sXZ7cTpx4oUyj73lMC3/x6mKQ7rqXfKgYuOPzH/lq",
  render_errors: [view: MyDockerAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MyDockerApp.PubSub,
  live_view: [signing_salt: "ddf8Af72"],
  debug_errors: true

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
