use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :phoenix_china, PhoenixChina.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch", "--stdin",
                    cd: Path.expand("../", __DIR__)]]


# Watch static and templates for browser reloading.
config :phoenix_china, PhoenixChina.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :phoenix_china, PhoenixChina.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_china_dev",
  hostname: "localhost",
  pool_size: 10

# 供本地测试使用， 支持localhost, 127.0.0.1
config :phoenix_china, PhoenixChina.Luosimao,
  site_key: "2563bdb7c87ff384e025d263aa982552",
  api_key: "ab28caeb5aca5a02b7432994650f9665"


config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "fd066f57759362e23798",
  client_secret: "efb20b946c19c0872aa5475e49e6814b284d00be"
