require "minitest/autorun"
require_relative "bash.rb"

class BashTdd < Minitest::Test
    def test_that_mynum_has_value
        assert_equal("1234", mynum()[0..5])
    end
end