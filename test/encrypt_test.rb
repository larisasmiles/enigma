require 'minitest/pride'
require 'minitest/autorun'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def test_it_exists
    e = Encrypt.new

    assert_instance_of Encrypt, e
  end


end
