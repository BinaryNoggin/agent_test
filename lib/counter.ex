defmodule AgentTest.Counter do
  @name __MODULE__

  def start_link(opts \\ []) do
    opts = Keyword.put_new(opts, :name, @name)
    Agent.start_link(fn -> 0 end, opts)
  end

  def get(name \\ @name) do
    Agent.get(name, fn(count) -> count end)
  end

  def increment(name \\ @name) do
    Agent.update(name, fn(count) -> count + 1 end)
  end
end
