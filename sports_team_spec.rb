require('minitest/autorun')
require('minitest/rg')
require_relative('./sports_team')

class TestSportsTeam < MiniTest::Test

    def test_team_name()
        teamA = SportsTeam.new("Wild Cobraz", ["Terry", "Bill", "Hank"], "Ivan", 0)
        assert_equal("Wild Cobraz", teamA.get_team_name())
    end

    def test_team_list()
        teamA = SportsTeam.new("Wild Cobraz", ["Terry", "Bill", "Hank"], "Ivan", 0)
        assert_equal(["Terry", "Bill", "Hank"], teamA.get_team_list())
    end

    def test_coach_name()
        teamA = SportsTeam.new("Wild Cobraz", ["Terry", "Bill", "Hank"], "Ivan", 0)
        assert_equal("Ivan", teamA.get_coach())
    end

    def test_change_coach()
        teamA = SportsTeam.new("Wild Cobraz", ["Terry", "Bill", "Hank"], "Ivan", 0)
        teamA.set_new_coach("Boris")
        assert_equal("Boris", teamA.get_coach())
    end

    def test_add_new_player()
        teamA = SportsTeam.new("Wild Cobraz", ["Terry", "Bill", "Hank"], "Ivan", 0)
        teamA.add_new_player("Mikhale")
        assert_equal(["Terry", "Bill", "Hank", "Mikhale"], teamA.get_team_list())
    end

    def test_player_present()
        teamA = SportsTeam.new("Wild Cobraz", ["Terry", "Bill", "Hank"], "Ivan", 0)
        assert_equal("Da, Bill is here!", teamA.player_present("Bill"))
    end

    def test_player_missing()
        teamA = SportsTeam.new("Wild Cobraz", ["Terry", "Bill", "Hank"], "Ivan", 0)
        assert_equal('Obrin? Who is Obrin?', teamA.player_present("Obrin"))
    end

    def test_points_count__win()
        teamA = SportsTeam.new("Wild Cobraz", ["Terry", "Bill", "Hank"], "Ivan", 0)
        teamA.update_points("Won")
        assert_equal(3, teamA.points_check())
    end

    def test_points_count__loss()
        teamA = SportsTeam.new("Wild Cobraz", ["Terry", "Bill", "Hank"], "Ivan", 0)
        teamA.update_points("Loss")
        assert_equal(1, teamA.points_check())
    end
end
#class end
