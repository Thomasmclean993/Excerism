defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end
  def apply_discount(before_discount, discount) do
    before_discount * ((100.0 - discount) / 100.0)
  end
  defp discounted_daily_rate(hourly_rate, discount) do
    hourly_rate
    |> apply_discount(discount)
    |> daily_rate()
  end
  def monthly_rate(hourly_rate, discount) do
    ceil(22 * discounted_daily_rate(hourly_rate, discount))
  end
  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate = discounted_daily_rate(hourly_rate, discount)
    Float.floor(budget / daily_rate, 1)
  end
end
