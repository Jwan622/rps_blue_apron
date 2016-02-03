class Messages
  def self.introduction(strategy_name)
    "You are playing against strategy #{strategy_name}."
  end

  def self.display_options
    "Type 'r', 'p' or 's'. Or type 'q' to quit."
  end

  def self.invalid_input
    "Your input is invalid."
  end

  def self.computer_play_and_eval(comp_decision, victor_of_round)
    "I chose #{comp_decision.to_s}. " + victor_of_round[:declaration]
  end

  def self.end_game
    "Thanks for playing. Goodbye!"
  end

  def self.announce_score(standings)
    "You won #{standings[:user]} times.\nYou lost #{standings[:computer]} times.\nWe tied #{standings[:tie]} times.\n"
  end
end
