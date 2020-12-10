require 'player'

describe Player do
  it 'returns its own name' do
    player = Player.new("Bob")
    expect(player.name).to eq "Bob"
  end
end
