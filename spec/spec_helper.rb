require 'stringio'

require './lib/rps_game'
require './lib/input_evaluator'
require './lib/messages'
require './lib/scorer'
require './lib/score_keeper'

Dir["./lib/computer_strategies/*.rb"].each {|file| require file }
