defmodule TestTest do
  use ExUnit.Case
  #doctest Test

  test "name" do
    assert Test.get_user(:name) == "Sonoo Jaiswal"
  end

  test "address" do
    assert Test.get_user(:address) == "Plot-6, Mohan Nagar Ghaziabad UP 201007"
  end

  test "birthday" do
    assert Test.get_user(:birth) == "1997"
  end


end
