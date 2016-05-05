require "spec_helper"
require "./lib/board"

RSpec.describe Board do
  it "says board is empty" do
    expect(subject.empty?).to eq true
  end

  it "checks if we can make a move" do
    expect(subject.make_move({sign: "x", pos: :a1})).to eq "x"
  end

  it "will not allow the same spot to be selected twice" do
    expect(subject.make_move({sign: "x", pos: :a1})).to eq "x"
    expect(subject.make_move({sign: "x", pos: :a1})).to eq false
  end

  it "will identify that a winning combination is recognized" do
    subject.make_move({sign: "x", pos: :a1})
    subject.make_move({sign: "x", pos: :a2})
    subject.make_move({sign: "x", pos: :a3})
    expect(subject.winner("x")).to eq true
    expect(subject.winner("o")).to eq false
  end

  it "can return moves for player" do
    subject.make_move({sign: "x", pos: :a1})
    subject.grid_view
    subject.make_move({sign: "x", pos: :a2})
    subject.grid_view
    subject.make_move({sign: "x", pos: :a3})
    subject.grid_view
    expect(subject.moves_for_sign("x")).to eq [:a1, :a2, :a3]
  end

  it "knows the board is full" do
    subject.make_move({sign: "x", pos: :a1})
    subject.make_move({sign: "x", pos: :a2})
    subject.make_move({sign: "x", pos: :a3})
    subject.make_move({sign: "x", pos: :b1})
    subject.make_move({sign: "x", pos: :b2})
    subject.make_move({sign: "x", pos: :b3})
    subject.make_move({sign: "x", pos: :c1})
    subject.make_move({sign: "x", pos: :c2})
    subject.make_move({sign: "x", pos: :c3})
    expect(subject.full?).to eq true
  end

  it "will identify a draw" do
    subject.make_move({sign: "x", pos: :a1})
    subject.make_move({sign: "o", pos: :a2})
    subject.make_move({sign: "x", pos: :a3})
    subject.make_move({sign: "o", pos: :b1})
    subject.make_move({sign: "x", pos: :b2})
    subject.make_move({sign: "o", pos: :b3})
    subject.make_move({sign: "x", pos: :c1})
    subject.make_move({sign: "o", pos: :c2})
    subject.make_move({sign: "x", pos: :c3})
    expect(subject.draw("x")).to eq true
    expect(subject.draw("o")).to eq true
  end
end
