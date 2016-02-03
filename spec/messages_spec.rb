require 'spec_helper'

describe Messages do
  attr_reader :messages

  before :all do
    @messages = Messages.new($stdout)
  end

  it "should output introduction message" do
    expect { messages.introduction("favorite") }.
      to output("You are playing against strategy favorite.\nType 'r', 'p' or 's'.\n").to_stdout_from_any_process
  end

  it "should output display options" do
    expect { messages.display_options }.
      to output("Type 'r', 'p' or 's'.\n").to_stdout_from_any_process
  end

  it "should output display options" do
    expect { messages.invalid_input }.
      to output("Your input is invalid.\nType 'r', 'p' or 's'.\n").to_stdout_from_any_process
  end

  it "should output end_game" do
    expect { messages.end_game }.
      to output("Thanks for playing. Goodbye!\n").to_stdout_from_any_process
  end
end
