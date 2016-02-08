defmodule PhysicsRocketryTest do
  use ExUnit.Case
  doctest Physics.Rocketry

  test "earth's escape velocity" do
    assert Physics.Rocketry.escape_velocity(:earth) == 11.2
  end

  test "escape velocity" do
    v = %{mass: 5.972e24, radius: 6.371e6}
      |> Physics.Rocketry.escape_velocity

    assert v == 11.2
  end
end
