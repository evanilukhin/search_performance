# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :search_performance,
  ecto_repos: [SearchPerformance.Repo]

# Configures the endpoint
config :search_performance, SearchPerformanceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MikgDuO+YdE/QuCaslVm1Gj7CRanQI2C3UxtBEn1aXcM72ql9+Vc76yt/95cE2uV",
  render_errors: [view: SearchPerformanceWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: SearchPerformance.PubSub,
  live_view: [signing_salt: "JoYmayze"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
