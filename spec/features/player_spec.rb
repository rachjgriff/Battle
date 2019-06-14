require 'player'

describe Player do

  describe '#name' do
    subject(:dave) {Player.new("Dave")}

    it 'returns the name' do
      expect(dave.name).to eq "Dave"
    end
  end
end
