require 'game'

describe Game do

  let(:player1) { double :player }
  let(:player2) { double :player }

  it 'attack should call receive damage on player passed in as argument' do
    expect(player2).to receive(:receive_damage)
    subject.attack(player2)
  end
end
