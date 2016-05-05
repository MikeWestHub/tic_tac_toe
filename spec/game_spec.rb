require_relative 'spec_helper'
require './lib/game'

RSpec.describe Game do
  it "entry is valid" do
    expect(subject.valid?("a3")).to eq true
  end

  it "" do

  end
end
