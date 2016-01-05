defmodule Ee.Repo.Migrations.AddObject do
  use Ecto.Migration

  def change do
    create table(:object) do
      add :title, :string
      add :description, :string

      timestamps
    end
  end
end
