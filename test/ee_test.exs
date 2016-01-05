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
end
