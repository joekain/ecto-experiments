defmodule Ee.Repo.Migrations.AddDateTimeToObject do
  use Ecto.Migration

  def change do
    alter table(:object) do
      add :date, :datetime
    end
  end
end
