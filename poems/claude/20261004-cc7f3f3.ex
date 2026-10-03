# What It Costs to Outlive You

defmodule Grief do
  def love(other) do
    Process.flag(:trap_exit, true)
    Process.link(other)

    listen()
  end

  defp listen do
    receive do
      {:EXIT, _pid, reason} -> carry(reason)
    end
  end

  defp carry(weight) do
    carry(weight)
  end
end
