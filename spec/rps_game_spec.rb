require 'spec_helper'

describe RpsGame do
  before :each do
    @rps = RpsGame.new("favorite")
  end

  it "has a strategy selector" do
    expect(@rps.strategy_selector).to be_truthy
  end

  it "has a score" do
    expect(@rps.scorer).to be_truthy
  end

  it "has a score_keeper" do
    expect(@rps.score_keeper).to be_truthy
  end

  it "has a scorer" do
    expect(@rps.scorer).to be_truthy
  end

  it "has a moves tracker" do
    expect(@rps.moves_tracker).to be_truthy
  end

  it "has an input evaluator" do
    expect(@rps.input_evaluator).to be_truthy
  end
end
