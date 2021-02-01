defmodule MyDockerApp.Repo do
  use Ecto.Repo,
    otp_app: :my_docker_app,
    adapter: Ecto.Adapters.Postgres
end
