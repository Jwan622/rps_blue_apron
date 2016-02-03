require 'spec_helper'

describe Messages do
  it "should describe the introduction message" do
    expect(Messages.introduction("favorite")).to eql("You are playing against strategy favorite.")
  end

  it "should describe the display options" do
    expect(Messages.display_options).to eql("Type 'r', 'p' or 's'.")
  end

  it "should describe invalid input" do
    expect(Messages.invalid_input).to eql("Your input is invalid.")
  end

  it "should output end_game" do
    expect(Messages.end_game).to eql("Thanks for playing. Goodbye!")
  end
end


# expect { Messages.introduction("favorite") }.
#   to output("You are playing against strategy favorite.\nType 'r', 'p' or 's'.\n").to_stdout_from_any_process
