require 'player'

describe Player do

  subject(:dave) {Player.new("Dave")}
  subject(:sarah) {Player.new("Sarah")}

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq "Dave"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'player attacked receives damage' do
      expect{dave.attack(sarah)}.to change { sarah.hit_points }.by -10
    end
  end
end
