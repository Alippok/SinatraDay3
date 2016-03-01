require('minitest/autorun')
require('minitest/rg')
require_relative('../models/bio.rb')

class TestBio < MiniTest::Test

  def setup

    @bio1 = Bio.new(name: "Alasdair Lippok", phone: "0131558030", address_first_line: "3 Argyle house", postcode: "eh13 zqf", location: "codebase")

  end

  def test_if_bio_displays_name
    assert_equal("Alasdair Lippok", @bio1.name)
  end

  def test_if_bio_displays_phone_number
    assert_equal("0131558030", @bio1.phone)
  end



end