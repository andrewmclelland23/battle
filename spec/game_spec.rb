require 'game'

describe Game do

  let(:player1) { double :player }
  let(:player2) { double :player }
  subject(:game) { described_class.new(player1, player2) }

  it 'attack should call receive damage on player passed in as argument' do
    expect(player2).to receive(:receive_damage)
    game.attack(player2)
  end

  it 'should initialize with first argument set to p1' do
    expect(game.player1).to eq player1
  end

  it 'should initialize with second argument set to p2' do
    expect(game.player2).to eq player2
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.turn).to eq player1
    end
  end

  describe '#switch_turn' do
    it 'switches the turn' do
      game.switch_turn
      expect(game.turn).to eq player2
    end
  end
end
