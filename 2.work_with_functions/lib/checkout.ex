defmodule Checkout do
  def total_cost(price, tax_rate) do
    price * (tax_rate + 1)
  end

  def total_cost_singleline(price, tax_rate), do: price * (tax_rate + 1)
end
