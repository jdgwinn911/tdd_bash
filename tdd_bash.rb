require "minitest/autorun"
require_relative "bash.rb"

class BashTdd < Minitest::Test
    def test_that_my_num_is_array
        assert_equal(Array, mynum().class)
    end

    def test_assert_that_winnum_has_value
        assert_equal("1", winnum()[0])
    end
end