class ComputerFavorite
  attr_reader :strategy_name

  def initialize
    @strategy_name = "favorite"
  end

  def make_decision(user_input, tally)
    tally.max_by { |decision, count| count }[0]
  end

  def make_random_move
    [:p, :s, :r].sample
  end
end
