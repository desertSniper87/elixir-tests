pid = spawn(fn -> :ping end)
Process.alive?(pid)
send(pid, :ping)

boom_pid = spawn_link(fn -> raise "BOOM" end)
