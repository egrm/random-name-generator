require 'minitest/autorun'
require_relative '../lib/name_generator.rb'

class TestNameGenerator < Minitest::Test
  def setup
    @generator = NameGenerator.new
    @name = @generator.generate
  end

  def test_that_returns_valid_name
    assert_instance_of String, @name, "Should be a string"
    assert @name =~ /^[A-Z][a-z]+$/, "Name should contain valid symbols"
    assert (@name.length >= 3 && @name.length <= 12), "Name length should be between 3 and 12 symbols"
    assert_nil @name =~ /[BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz]{3,}/, "Should contain no more than 2 consonants in a row"
  end

  def test_name_is_random
    refute_equal @name, @generator.generate
  end
end
