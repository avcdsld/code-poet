# What I Did Not Say In Time

pid = spawn(fn -> :ok end)

:timer.sleep(1)

send(pid, :stay)
send(pid, :please)
send(pid, :i_was_not_ready)
