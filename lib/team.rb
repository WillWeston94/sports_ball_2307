require './lib/player'

class Team 
    attr_accessor  :team_name,
                 :location,
                 :roster

    def initialize(team_name, location)
        @team_name = team_name
        @location = location
        @roster = []
    end 
    
    def player_count
        roster.count
    end

    def add_player(player)
        @roster.push(player)
    end

    def long_term_players
        @roster.select do |player|
            player.contract_length > 24
        end
    end

    def short_term_players
        @roster.select do |player|
            player.contract_length <= 24
        end
    end

    def value
        value = 0
            roster.each do |player|
            value += player.monthly_cost * player.contract_length
            end
            value
    end

    def details
        {"total_value" => value,  "player_count" => player_count}
    end
end