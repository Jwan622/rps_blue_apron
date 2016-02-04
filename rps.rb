require './lib/rps_game.rb'

class RpsRunner
  def start(difficulty, input_stream, output_stream)
    RpsGame.new(difficulty, input_stream, output_stream).play
  end
end

input_stream = $stdin if ARGV[1].nil?
output_stream = $stdout if ARGV[2].nil?
RpsRunner.new.start(ARGV[0], input_stream, output_stream)
