# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :elixir_helper,
  ecto_repos: [ElixirHelper.Repo]

config :elixir_helper_web,
  ecto_repos: [ElixirHelper.Repo],
  generators: [context_app: :elixir_helper]

# Configures the endpoint
config :elixir_helper_web, ElixirHelperWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iKIC3N+AER5FHjTDfOjCVXcf/bmJejJIFlBsD7vzvmJa1bSQ8QBIuhPzfinJUCt5",
  render_errors: [view: ElixirHelperWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ElixirHelperWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
