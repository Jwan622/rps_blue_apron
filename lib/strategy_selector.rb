require './lib/computer_strategies/computer_favorite'

class StrategySelector
  attr_reader :difficulty

  def initialize(difficulty)
    @difficulty = difficulty
  end

  def determine_strategy
    case difficulty
    when "favorite"
      ComputerFavorite.new
    when "last"
      ComputerLast.new
    end
  end
end
