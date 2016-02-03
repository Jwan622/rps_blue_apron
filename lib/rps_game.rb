require_relative 'strategy_selector'
require_relative 'scorer'
require_relative 'messages'
require_relative 'input_evaluator'

class RpsGame
  attr_reader :strategy_selector,
              :scorer,
              :messages,
              :computer,
              :user_input,
              :input_evaluator,
              :moves_tracker
              :input_stream,
              :output_stream

  def initialize(difficulty, input_stream = $stdin, output_stream = $stdout)
    @input_stream = input_stream
    @output_stream = output_stream
    @strategy_selector = StrategySelector.new(difficulty)
    @scorer = Scorer.new
    @messages = Messages.new(output_stream)
    @input_evaluator = InputEvaluator.new
    @moves_tracker = MovesTracker.new
    @user_input = ''
  end

  def play
    @computer = strategy_selector.determine_strategy
    messages.introduction(computer.strategy_name)

    @user_input = input_stream.gets.chomp
    while user_input != "q"

      while input_evalutor.is_invalid?(user_input)
        messages.invalid_input
        @user_input = input_stream.gets.chomp
      end
      moves_tracker.update(user_input)
      if moves_tracker.tally.values.all? {|number| number == 0}
        comp_decision = computer.make_random_move
      else
        comp_decision = computer.make_decision(user_input, moves_tracker.tally)
      end
      # victor_of_round = scorer.evaluate_round(comp_decision, user_input)
      # current_standings = score_keeper.update(victor_of_round)
      # messages.announce_score(current_standings)
    end
    messages.end_game
  end

  private

  def user_input_is_invalid?

  end

  def obtain_user_input

  end
end
