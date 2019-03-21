require 'player'

describe Player do

  let(:player1) { described_class.new('Andy') }
  let(:player2) { described_class.new('Tome') }

  it 'should return player name' do
    expect(described_class.new('Andy').name).to eq 'Andy'
  end

  it 'should return player HP' do
    expect(described_class.new('Andy').hp).to eq Player::DEFAULT_HP
  end

  it 'should reduce HP by 20 when receive damage called' do
    expect { player2.receive_damage }.to change { player2.hp }.by(-20)
  end
end
