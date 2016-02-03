class Messages
  attr_reader :output_stream

  def initialize(output_stream)
    @output_stream = output_stream
  end

  def introduction(strategy_name)
    output_stream.puts "You are playing against strategy #{strategy_name}."
    display_options
  end

  def display_options
    output_stream.puts "Type 'r', 'p' or 's'."
  end

  def invalid_input
    output_stream.puts "Your input is invalid."
    display_options
  end

  def end_game
    output_stream.puts "Thanks for playing. Goodbye!"
  end

  def announce_score(standings)
    "You won #{standings[:user]} times.\nYou lost #{standings[:computer]} times.\nWe tied #{standings[:tie]} times.\n"
  end
end
