defmodule EeTest do
  use ExUnit.Case
  doctest Ee

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "we can create and insert object records" do
    Ee.Repo.insert! %Ee.Object{
      title: "Test Object",
      description: "And object for the test"
    }
  end

  test "we can insert object records and query them back" do
    title = "Queryable title"

    object = Ee.Repo.insert! %Ee.Object{
      title: title,
      description: "And object for the test"
    }

    found = Ee.Object.find_by_title(title)
    |> Ee.Repo.all

    assert Enum.count(found) == 1
    assert List.first(found).id == object.id
  end

  test "we can create and insert object records with the date field" do
    Ee.Repo.insert! %Ee.Object{
      title: "Test Object",
      description: "And object for the test",
      date: Ecto.DateTime.from_erl({{2016, 1, 6}, {3, 59, 5}})
    }
  end

  test "we can insert object records and query them back by date" do
    date = {{2016, 1, 6}, {8, 0, 0}}

    object = Ee.Repo.insert! %Ee.Object{
      title: "Test Object",
      description: "And object for the test",
      date: Ecto.DateTime.from_erl(date)
    }

    found = Ee.Object.find_by_date(date)
    |> Ee.Repo.all

    assert Enum.count(found) == 1
    assert List.first(found).id == object.id
  end
end
