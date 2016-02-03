require 'spec_helper'

describe Messages do
  it "should describe the introduction message" do
    expect(Messages.introduction("favorite")).to eql("You are playing against strategy favorite.")
  end

  it "should describe the display options" do
    expect(Messages.display_options).to eql("Type 'r', 'p' or 's'. Or type 'q' to quit.")
  end

  it "should describe invalid input" do
    expect(Messages.invalid_input).to eql("Your input is invalid.")
  end

  it "should output end_game" do
    expect(Messages.end_game).to eql("Thanks for playing. Goodbye!")
  end

  it "should state the play and the winner" do
    expect(Messages.computer_play_and_eval(:s, { winner: :user, declaration: "You win!" })).to eql("I chose s. You win!")
    expect(Messages.computer_play_and_eval(:p, { winner: :computer, declaration: "Computer wins!" })).to eql("I chose p. Computer wins!")
    expect(Messages.computer_play_and_eval(:r, { winner: :tie, declaration: "It's a tie!" })).to eql("I chose r. It's a tie!")
  end

  it "should announce score" do
    expect(Messages.announce_score({ user: 2, computer: 3, tie: 0 })).to eql("You won 2 times.\nYou lost 3 times.\nWe tied 0 times.\n")
  end
end
