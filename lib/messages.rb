class Messages
  def self.introduction(strategy_name)
    "You are playing against strategy #{strategy_name}."
  end

  def self.display_options
    "Type 'r', 'p' or 's'."
  end

  def self.invalid_input
    "Your input is invalid."
  end

  def self.end_game
    "Thanks for playing. Goodbye!"
  end

  def self.announce_score(standings)
    "You won #{standings[:user]} times.\nYou lost #{standings[:computer]} times.\nWe tied #{standings[:tie]} times.\n"
  end
end
