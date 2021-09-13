class Player
  attr_reader :health, :name
  def initialize(name)
    @health = 3
    @name = name
  end

  def player_lose
    @health -= 1
  end
end
