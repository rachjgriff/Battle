require 'game'

describe Game do

  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new(player_1, player_2)}

  it 'initialize game with 2 players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  describe '#attack' do
    it 'player attacked receives damage' do
      allow(player_1).to receive(:receives_damage).and_return "ouch"
      expect(game.attack(player_1)).to eq "ouch"
    end
  end
end
