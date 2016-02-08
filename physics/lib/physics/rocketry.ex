defmodule Physics.Rocketry do

  def escape_velocity(:earth) do
    %{mass: 5.972e24, radius: 6.371e6}
      |> escape_velocity
  end

  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> Calcs.convert_to_km
      |> Calcs.round_to_nearest_tenth
  end


  defp calculate_escape(%{mass: mass, radius: radius}) do
    n = 6.67e-11
    2 * n * mass / radius
      |> :math.sqrt
  end
end
