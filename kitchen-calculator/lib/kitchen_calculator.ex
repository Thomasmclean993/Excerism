defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    # Please implement the get_volume/1 function
    {_, vol} = volume_pair
    vol
  end

  def to_milliliter(volume_pair) do
    # Please implement the to_milliliter/1 functions
      case volume_pair do
        {:cup, vol} -> {:milliliter, vol *240}
        {:milliliter, vol} -> {:milliliter, vol}
        {:fluid_ounce, vol} -> {:milliliter, vol * 30}
        {:teaspoon, vol} -> {:milliliter, vol * 5}
        {:tablespoon, vol} -> {:milliliter, vol * 15}
      end
  end

  def from_milliliter(volume_pair, unit) do
    # Please implement the from_milliliter/2 functions
    {:milliliter, vol} = volume_pair
    case unit do
      :milliliter -> {:milliliter, vol}
      :cup -> {:cup, vol / 240}
      :fluid_ounce -> {:fluid_ounce, vol /30}
      :teaspoon -> {:teaspoon, vol /5}
      :tablespoon -> {:tablespoon, vol /15}
    end
  end

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
    measure = to_milliliter(volume_pair)
    from_milliliter(measure, unit)

  end
end
