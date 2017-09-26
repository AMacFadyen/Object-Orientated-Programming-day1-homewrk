class SportsTeam

    def initialize(team_name, playerslist, coach_name, points)
        @team_name = team_name
        @players = playerslist
        @coach_name = coach_name
        @points = points
    end

    def get_coach()
        return @coach_name
    end

    def get_team_name()
        return @team_name
    end

    def get_team_list()
        return @players
    end

    def points_check()
        return @points
    end

    def set_new_coach(new_coach)
        @coach_name = new_coach
    end

    def add_new_player(new_player)
        @players << new_player
    end

    def player_present(player_name)
        for player in @players
            if player == player_name
                return "Da, #{player_name} is here!"
            end
        end
        return "#{player_name}? Who is #{player_name}?"
    end

    def update_points(result)
        if result == "Won"
            @points += 3
        else
            @points += 1
        end
    end


end
#end of class
