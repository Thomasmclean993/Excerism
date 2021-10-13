defmodule BirdCount do
  def today(list) when list == [], do: nil
  def today(list) do
    List.first(list)
  end

  def increment_day_count(list) when list == [], do: [1]
  def increment_day_count(list) do
  num_of_birds = BirdCount.today(list) +1
  List.replace_at(list,0, num_of_birds)

  end

  def has_day_without_birds?(list) when list == [], do: false
  def has_day_without_birds?(list) do
   Enum.any?(list, fn x -> x == 0 end)
  end

  def total(list) when list == [], do: 0
  def total(list) do
    Enum.sum(list)
  end

  def busy_days(list) when list == [], do: 0
  def busy_days(list) do
    Enum.count(list, fn x ->  x >= 5 end)
  end
end
