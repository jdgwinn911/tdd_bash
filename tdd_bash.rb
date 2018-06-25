require "minitest/autorun"
require_relative "bash.rb"

class BashTdd < Minitest::Test
    
    def test_assert_comparison_returns_number
        assert_equal(Integer,check_for_match("", "").class)
    end

    def test_that_1_match_returns_1
        assert_equal(1, check_for_match("1111", "1222"))
    end

    def test_taht_2_matches_returns_2
        assert_equal(2, check_for_match("1111", "1122"))
    end
end