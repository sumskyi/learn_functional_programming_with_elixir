defmodule MyTurn.Sarah do
  @bread_price 0.1
  @milk_price 2
  @ake_price 15

  def spent(bread_count, milk_count, cake_count) do
    bread_cost = bread_count * @bread_price
    milk_cost = milk_count * @milk_price
    cake_cost = cake_count * @ake_price

    total_cost = bread_cost + milk_cost + cake_cost
    IO.puts("Sarah spent #{total_cost} on groceries.")
  end
end
