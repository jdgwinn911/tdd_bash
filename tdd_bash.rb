require "minitest/autorun"
require_relative "bash.rb"

class BashTdd < Minitest::Test
    
    def test_assert_comparison_returns_number
        assert_equal(Integer,check_for_match("", "").class)
    end

    def test_that_1_match_returns_1
        assert_equal(1, check_for_match("1111", "1222"))
    end
end