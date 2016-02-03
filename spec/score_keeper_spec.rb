require 'spec_helper'

describe ScoreKeeper do
  attr_reader :score_keeper

  before :each do
    @score_keeper = ScoreKeeper.new
  end

  it "correctly initializes with a blank score" do
    expect(score_keeper.standings). to eql({ user: 0, computer: 0, tie: 0 })
  end

  it "correctly increments the victor" do
    expect(score_keeper.increments(:user)). to eql({ user: 1, computer: 0, tie: 0 })
    expect(score_keeper.increments(:user)). to eql({ user: 2, computer: 0, tie: 0 })
    expect(score_keeper.increments(:computer)). to eql({ user: 2, computer: 1, tie: 0 })
    expect(score_keeper.increments(:computer)). to eql({ user: 2, computer: 2, tie: 0 })
    expect(score_keeper.increments(:tie)). to eql({ user: 2, computer: 2, tie: 1 })
  end
end
