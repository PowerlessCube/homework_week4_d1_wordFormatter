require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/word_formatter' )

class TestWordFormatter < Minitest::Test

  def setup
    @word_formatter = WordFormatter.new(  )
  end

  def test_upcase_that_thing
    assert_equal( 'EH8 7AD', @word_formatter.upcase_that_thing( 'eh8 7ad' )  )
  end


end
