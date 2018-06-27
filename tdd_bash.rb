require "minitest/autorun"
require_relative "bash.rb"

class BashTdd < Minitest::Test
    
    def test_assert_comparison_returns_number
        assert_equal(Integer,check_for_match("", "").class)
    end

    def test_that_1_match_returns_3
        assert_equal(3, check_for_match("1111", "1222"))
    end

    def test_that_2_matches_returns_2
        assert_equal(2, check_for_match("1111", "1122"))
    end

    def test_how_much_tickest_are_off_by
        assert_equal([2,1,0], check_for_match_arr(["1222", "1235", "1234",], "1234"))
    end

    def test_how_much_tickest_are_off_by_ver_2
        assert_equal([2, 3, 3, 1], check_for_match_arr(["1146", "1234", "1256", "1119"], "1111"))
    end

    def test_if_winners_equal_2
        assert_equal([2, 0], winarr(["1234", "1234", "1244", "1255"], ["1234", "1299"]))
    end

    def test_if_1_off_return
        assert_equal(["1235"], check_for_match_arr(["1222", "1235", "1234"], "1234"))
    end
end