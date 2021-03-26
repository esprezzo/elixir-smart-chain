defmodule SmartChain.Application do

  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: SmartChain.Worker.start_link(arg1, arg2, arg3)
      # worker(SmartChain.Worker, [arg1, arg2, arg3]),
    ]
    opts = [strategy: :one_for_one, name: SmartChain.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
