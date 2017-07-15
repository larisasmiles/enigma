require 'minitest/pride'
require 'minitest/autorun'
require './lib/encrypt'
require './lib/key_generator'

class EncryptTest < Minitest::Test

  def test_it_exists
    e = Encrypt.new

    assert_instance_of Encrypt, e
  end

  def test_it_returns_array
    e = Encrypt.new

    result = e.generate_key

    assert Array, result
  end





end
