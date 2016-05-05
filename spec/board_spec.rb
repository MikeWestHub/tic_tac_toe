require "spec_helper"
require "./lib/board"

RSpec.describe Board do
  it "says board is empty" do
    expect(subject.empty?).to eq true
  end

  it "checks if moves have been made" do

  end

  it "checks if we can make a move" do
    expect(subject.make_move({sign: "x", pos: :a1})).to eq "x"
  end

  it "will not allow the same spot to be selected twice" do
    expect(subject.make_move({sign: "x", pos: :a1})).to eq "x"
    expect(subject.make_move({sign: "x", pos: :a1})).to eq false
  end
end
