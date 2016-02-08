defmodule Calcs do
  def round_to_nearest_tenth(number) do
    Float.ceil(number, 1)
  end

  def convert_to_km(velocity) do
    velocity / 1000
  end
end
