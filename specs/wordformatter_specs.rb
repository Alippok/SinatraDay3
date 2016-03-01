require('minitest/autorun')
require('minitest/rg')
require_relative('../models/wordformatter.rb')


class TestWordFormatter < MiniTest::Test

  def setup

    @wordformatter1 = Wordformatter.new

  end

  def test_if_wordformatter_upcases_arg
    result = @wordformatter1.upcase("johnny maxwell")
    assert_equal("JOHNNY MAXWELL", result)

  end



end