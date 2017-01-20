defmodule AgentTest do
  use Application

  def start(_, _) do
    import Supervisor.Spec

    children = [
      worker(AgentTest.Counter, [], restart: :permanent)
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: AgentTest.Supervisor)
  end
end
