require 'minitest/pride'
require 'minitest/autorun'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test

  def test_does_key_exist
    key = KeyGenerator.new

    assert_instance_of KeyGenerator, key
  end

  def test_key_is_not_passed_in
    # skip
    k_1 = KeyGenerator.new
    k_2 = KeyGenerator.new

    refute_equal k_1, k_2
  end

  def test_if_ken_gen_outputs_5_numbers
    key = KeyGenerator.new

    result = key.key_gen.length

    assert_equal 5, result
  end

  def test_if_key_gen_outputs_random_numbers
    key = KeyGenerator.new

    result = key.key_gen

    refute "00000", result
  end
end
