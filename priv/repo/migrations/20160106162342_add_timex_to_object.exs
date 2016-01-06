defmodule Ee.Repo.Migrations.AddTimexToObject do
  use Ecto.Migration

  def change do
    alter table(:object) do
      add :timex, :datetimetz
    end
  end
end
