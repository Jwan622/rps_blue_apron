require 'spec_helper'

describe RpsGame do
  before :each do
    @rps = RpsGame.new("favorite")
  end

  it "has a computer" do
    expect(@rps.computer).to be_truthy
  end

  it "has a score" do
    expect(@rps.scorer).to be_truthy
  end

  it "has messages" do
    expect(@rps.messages).to be_truthy
  end
end
