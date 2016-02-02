require_relative 'computer_selector'
require_relative 'scorer'
require_relative 'messages'

class RpsGame
  attr_reader :computer,
              :scorer,
              :messages

  def initialize(difficulty)
    @computer = ComputerSelector.new(difficulty)
    @scorer = Scorer.new
    @messages = Messages.new
  end
end
