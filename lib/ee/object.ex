defmodule Ee.Object do
  use Ecto.Schema
  import Ecto.Query, only: [from: 2]

  schema "object" do
    field :title, :string
    field :description, :string
    field :date, Ecto.DateTime
    field :timex, Timex.Ecto.DateTimeWithTimezone

    # has_many :available_date_ranges, Project.AvailableDateRange, on_replace: :delete

    timestamps
  end

  def find_by_title(title) do
    from object in Ee.Object, where: object.title == ^title
  end

  def find_by_date(date) do
    from object in Ee.Object, where: object.date == ^date
  end
end
