use Mix.Config

config :ee, Ee.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_experiments_test",
  username: "postgres",
  password: "postgres",
  pool: Ecto.Adapters.SQL.Sandbox
