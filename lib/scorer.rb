class Scorer
  BEATS = { :p => :r, :r => :s, :s => :p }

  def evaluate_round(comp_decision, user_input)
    if comp_decision == user_input
      :tie
    elsif BEATS[comp_decision] == user_input
      :computer
    else
      :user
    end
  end
end
