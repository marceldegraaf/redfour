defmodule PhysicsRocketryTest do
  use ExUnit.Case
  doctest Physics.Rocketry

  test "escape velocity" do
    v = %{mass: 5.972e24, radius: 6.371e6}
      |> Physics.Rocketry.escape_velocity

    assert v == 11.2
  end
end
