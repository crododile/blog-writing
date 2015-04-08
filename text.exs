ExUnit.start

defmodule MyTest do
  use ExUnit.Case

  test "upcase function" do
    assert String.upcase("Metova") == "METOVA"
  end
end
