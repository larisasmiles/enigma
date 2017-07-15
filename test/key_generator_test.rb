require 'minitest/pride'
require 'minitest/autorun'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test

  def test_key_is_passed_in
    key = "12345"
    k = KeyGenerator.new(key)

    assert_equal key, k.key_gen
  end

  def test_key_is_not_passed_in
    # skip
    k_1 = KeyGenerator.new
    k_2 = KeyGenerator.new

    refute_equal k_1, k_2
  end


  end
end
