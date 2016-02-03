require_relative 'strategy_selector'
require_relative 'scorer'
require_relative 'messages'
require_relative 'input_evaluator'
require_relative 'moves_tracker'
require_relative 'score_keeper'
require_relative 'printer'

class RpsGame
  attr_reader :strategy_selector,
              :scorer,
              :computer,
              :user_input,
              :printer,
              :input_evaluator,
              :moves_tracker,
              :score_keeper,
              :input_stream,
              :output_stream

  def initialize(difficulty, input_stream = $stdin, output_stream = $stdout)
    @input_stream = input_stream
    @output_stream = output_stream
    @strategy_selector = StrategySelector.new(difficulty)
    @scorer = Scorer.new
    @printer = Printer.new(output_stream)
    @score_keeper = ScoreKeeper.new
    @input_evaluator = InputEvaluator.new
    @moves_tracker = MovesTracker.new
    @user_input = ''
  end

  def play
    @computer = strategy_selector.determine_strategy
    printer.print(Messages.introduction(computer.strategy_name))

    @user_input = input_stream.gets.chomp.to_sym
    while user_input != :q

      while input_evalutor.is_invalid?(user_input)
        printer.print(Messages.invalid_input)
        @user_input = input_stream.gets.chomp.to_sym
      end
      moves_tracker.update(user_input)
      if moves_tracker.tally.values.all? {|number| number == 0}
        comp_decision = computer.make_random_move
      else
        comp_decision = computer.make_decision(user_input, moves_tracker.tally)
      end
      victor_of_round = scorer.evaluate_round(comp_decision, user_input)
      current_standings = score_keeper.increments(victor_of_round)
      printer.print(Messages.announce_score(current_standings))
    end
    printer.print(Messages.end_game)
  end

  private

  def user_input_is_invalid?

  end

  def obtain_user_input

  end
end
