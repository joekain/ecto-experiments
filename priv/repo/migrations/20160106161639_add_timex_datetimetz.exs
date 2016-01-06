defmodule Ee.Repo.Migrations.AddTimexDatetimetz do
  use Ecto.Migration

  def up do
    execute """
    CREATE TYPE datetimetz AS (
        dt timestamptz,
        tz varchar
    );
    """
  end

  def down do
    execute "DROP TYPE IF EXISTS datetimetz;"
  end
end
