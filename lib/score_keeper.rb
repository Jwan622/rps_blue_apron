class ScoreKeeper
  attr_reader :standings

  def initialize
    @standings = { user: 0, computer: 0, tie: 0 }
  end

  def increments(victor)
    standings[victor] += 1
    standings
  end
end
