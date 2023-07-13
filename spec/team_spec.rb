require './lib/player'
require './lib/team'

RSpec.describe Team do
    it "#exists and has attributes" do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_an_instance_of(Team)
    end

    it "#roster exists" do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.roster).to eq([])
    end

    it "# shows player count" do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
    end

    it "adds players" do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)

        expect(team.add_player(player_1)).to eq([player_1])
    end

    it "adds players" do
        team = Team.new("Dodgers", "Los Angeles")
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        expect(team.add_player(player_2)).to eq([player_2])
    end

    it "#shows roster" do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        
        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
    end

    it "#counts roster" do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        
        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.player_count).to eq(2)
    end
end