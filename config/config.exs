# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :idea_snippets,
  ecto_repos: [IdeaSnippets.Repo]

# Configures the endpoint
config :idea_snippets, IdeaSnippetsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EBqjtVdAYUzc9tUMo+pBBRayclcJY9mHL0xVk3zLUjTP2jPamSjP0A3RZ0iWhDNF",
  render_errors: [view: IdeaSnippetsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: IdeaSnippets.PubSub,
  live_view: [signing_salt: "vF8kYur/"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
