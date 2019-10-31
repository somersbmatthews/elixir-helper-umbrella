defmodule ElixirHelperWeb.Router do
  use ElixirHelperWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirHelperWeb do
    pipe_through :api
  end
end
