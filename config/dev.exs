use Mix.Config

config :ee, Ee.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_experiments",
  username: "postgres",
  password: "postgres"
