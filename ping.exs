defmodule PingPong do
  @game_finish 11
  def ready do
    receive do
      {sender, action, @game_finish} ->
        IO.puts("#{11} from #{inspect(sender)}, sent #{inspect(action)}")
        IO.puts("Game Finished")
        ready()

      {sender, action, turn} ->
        hit_to(sender, switch(action), turn + 1)
        ready()
    after
      1_000 -> IO.puts("Timing out player #{inspect(player_pid())}")
    end
  end

  defp player_pid do
    self()
  end

  defp switch(action) do
    case action do
      :ping -> :pong
      _ -> :ping
    end
  end

  def hit_to(opponent_id, action, turn) do
    IO.puts("#{turn}. hit_to #{inspect(opponent_id)} #{inspect(action)}")
    send(opponent_id, {player_pid(), action, turn})
  end
end

player_1 = self()
# player_2 = spawn(PingPong, :ready, [])
# player_2 = elem(Task.start(PingPong, :ready, []), 1)
player_2 = PingPong |> Task.start(:ready, []) |> elem(1)
IO.puts("player_1: #{inspect(player_1)}")

IO.puts("player_2: #{inspect(player_2)}")

PingPong.hit_to(player_2, :ping, 1)
PingPong.ready()
