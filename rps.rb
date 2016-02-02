require './lib/rps_game.rb'

class RpsRunner
  def start(difficulty)
    RpsGame.new(difficulty)
  end
end

RpsRunner.start(ARGV[0])
