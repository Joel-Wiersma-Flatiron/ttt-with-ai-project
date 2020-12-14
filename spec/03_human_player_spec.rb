require 'spec_helper'

describe 'Human' do
  it 'inherits from Player' do
    expect(Human.ancestors).to include(Player)
  end

  describe '#move' do
    it 'asks the user for input and returns it' do
      human = Human.new("X")
      allow($stdout).to receive(:puts)

      expect(human).to receive(:gets).and_return("1")

      expect(human.move(Board.new)).to eq("1")
    end
  end
end
