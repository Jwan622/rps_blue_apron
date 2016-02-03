require_relative 'computer'

class ComputerFavorite < Computer
  attr_reader :strategy_name

  def initialize
    @strategy_name = "favorite"
  end

  def make_decision(user_input, tally)
    if tally.values.reduce(:+) <= 1
      play_gt_optimal
    else
      highest_tally_number = tally.values.max
      tally.select { |decision, count| count == highest_tally_number }.keys.sample
    end
  end
end
