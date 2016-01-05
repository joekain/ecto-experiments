defmodule Ee.Object do
  use Ecto.Schema

  schema "object" do
    field :title, :string
    field :description, :string

    # has_many :available_date_ranges, Project.AvailableDateRange, on_replace: :delete

    timestamps
  end
end
