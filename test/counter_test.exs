defmodule AgentTest.CounterTest do
  use ExUnit.Case, async: true
  alias AgentTest.Counter

  setup do
    Counter.start_link(name: __MODULE__)
    :ok
  end

  test "initial value" do
    assert Counter.get(__MODULE__) == 0
  end

  test "increment" do
    Counter.increment(__MODULE__)
    assert Counter.get(__MODULE__) == 1
  end
end
