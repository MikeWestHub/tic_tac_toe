require_relative "spec_helper"
require "./lib/player"

RSpec.describe Player do
  it "can initialize with name" do
    bob = Player.new("bob", "O")
    expect(bob.name).to eq "bob"
  end

  it "player can have a sign" do
    bob = Player.new("bob", "O")
    expect(bob.sign).to eq "O"
  end
end
