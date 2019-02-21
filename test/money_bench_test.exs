defmodule MoneyBenchTest do
  use ExUnit.Case
  doctest MoneyBench

  test "greets the world" do
    assert MoneyBench.hello() == :world
  end
end
