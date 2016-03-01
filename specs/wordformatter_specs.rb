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

  def test_if_wordformattter_upcases_arg_containing_fixnums
    result = @wordformatter1.upcase("eh23 5gh")
    assert_equal("EH23 5GH", result)
  end

  def test_if_wordformatter_camelcases_two_word_strings
    result = @wordformatter1.camelcase("master plan")
    assert_equal("MasterPlan", result)
  end
  
  def test_if_wordformatter_camelcases_strings_containing_more_than_two_words
    result = @wordformatter1.camelcase("code clan code base")
    assert_equal("CodeClanCodeBase", result)

  end




end