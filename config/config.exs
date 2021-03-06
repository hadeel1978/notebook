# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :notebook,
  ecto_repos: [Notebook.Repo]

# Configures the endpoint
config :notebook, Notebook.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ukf+e4Tt1eLnUJd5hzg5WrT/cmsAUacFv9/RgmUuISCcR1cGFuAhDc5MAXC4tQed",
  render_errors: [view: Notebook.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Notebook.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
