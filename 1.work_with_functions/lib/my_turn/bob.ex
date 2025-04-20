defmodule MyTurn.Bob do
  @distance 200
  @time 4

  def result do
    velocity = @distance / @time

    IO.puts("Bob's distance was #{@distance}km, time was #{@time}, and the average speed is #{velocity} km/h.")
  end
end
