class Player

  DEFAULT_HIT_POINTS = 100

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def attack(player)
    player.receives_damage
  end

  def receives_damage
    @hit_points -= 10
  end
end
