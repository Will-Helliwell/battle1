class Player
  STARTING_POINTS = 100
  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = STARTING_POINTS
  end

  def attack
    receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end

end
