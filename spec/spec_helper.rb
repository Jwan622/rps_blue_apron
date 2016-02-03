require 'pry'
require 'stringio'

require './lib/rps_game'
require './lib/input_evaluator'
require './lib/messages'
Dir["./lib/computer_strategies/*.rb"].each {|file| require file }
