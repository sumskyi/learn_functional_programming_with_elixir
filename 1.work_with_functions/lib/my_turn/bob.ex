defmodule MyTurn.Bob do
  @moduledoc """
  Bob has traveled 200 km in four hours. Using variables, print a message
  showing his travel distance, time, and average velocity.
  """

  @distance 200
  @time 4

  def result do
    velocity = @distance / @time

    IO.puts("Bob's distance was #{@distance}km, time was #{@time}, and the average speed is #{velocity} km/h.")
  end
end
