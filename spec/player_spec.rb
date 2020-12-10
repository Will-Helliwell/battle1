require 'player'

describe Player do
  let(:player) {Player.new("Bob")}

  it 'returns its own name' do
    expect(player.name).to eq "Bob"
  end
  it "starts with STARTING_POINTS hit points" do
    expect(player.hit_points).to eq(Player::STARTING_POINTS)
  end

  describe "#attack" do
    it "removes 10 hit points" do
      player.attack
      expect(player.hit_points).to eq(Player::STARTING_POINTS - 10)
    end
  end
end
