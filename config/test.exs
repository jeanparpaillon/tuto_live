import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tuto_live, TutoLiveWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "DjDB+b6dWdbxtidvF9FNh86xkn4UIRPHMfFK262NIuPWnxju66WW8TQ8J3Qmy+j/",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
