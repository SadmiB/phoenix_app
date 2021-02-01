defmodule MyDockerAppWeb.PageController do
  use MyDockerAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
