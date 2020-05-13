defmodule RobotSimulator do
  @doc """
  Create a Robot Simulator given an initial direction and position.

  def create(direction :
  """
  def create(direction \\ :north, position \\ {0,0}) when not (direction in [:north, :south, :east, :west]) do
    {:error, "invalid direction"}
  end

  @spec create(direction :: atom, position :: {integer, integer}) :: any
  def create(direction, position) do
    %{
      :direction => direction,
      :position => position
    }
  end

  def valid_direction?(direction) do
    Enum.member?([:north, :south, :east, :west], direction)
  end

  @doc """
  Simulate the robot's movement given a string of instructions.

  Valid instructions are: "R" (turn right), "L", (turn left), and "A" (advance)
  """
  @spec simulate(robot :: any, instructions :: String.t()) :: any
  def simulate(robot, instructions) do
  end

  @doc """
  Return the robot's direction.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  @spec direction(robot :: any) :: atom
  def direction(robot) do
    robot[:direction]
  end

  @doc """
  Return the robot's position.
  """
  @spec position(robot :: any) :: {integer, integer}
  def position(robot) do
    robot[:position]
  end
end
