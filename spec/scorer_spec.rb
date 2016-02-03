require 'spec_helper'

describe Scorer do
  attr_reader :scorer

  before :each do
    @scorer = Scorer.new
  end

  it "correctly picks a tie" do
    expect(scorer.evaluate_round(:r, :r)).to eql(:tie)
    expect(scorer.evaluate_round(:s, :s)).to eql(:tie)
    expect(scorer.evaluate_round(:p, :p)).to eql(:tie)
  end

  it "correctly picks the computer if it wins" do
    expect(scorer.evaluate_round(:r, :s)).to eql(:computer)
    expect(scorer.evaluate_round(:s, :p)).to eql(:computer)
    expect(scorer.evaluate_round(:p, :r)).to eql(:computer)
  end

  it "correctly picks the user if it wins" do
    expect(scorer.evaluate_round(:r, :p)).to eql(:user)
    expect(scorer.evaluate_round(:p, :s)).to eql(:user)
    expect(scorer.evaluate_round(:s, :r)).to eql(:user)
  end
end
