# What You Do With What Remains

defmodule Bond do
  def share(pid) do
    Process.link(pid)
    receive do
    after
      :infinity -> :never_reached
    end
  end

  def survive(pid) do
    Process.flag(:trap_exit, true)
    Process.link(pid)
    receive do
      {:EXIT, ^pid, _} -> :carry_it
    end
  end
end

doomed = spawn(fn -> :timer.sleep(100); exit(:gone) end)

case System.get_env("TRAP") do
  nil -> Bond.share(doomed)
  _   -> Bond.survive(doomed)
end
