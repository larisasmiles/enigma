require 'autorun/pride'
require 'minitest/autorun'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_encrypts
    e = Enigma.new
    my_message = "larisa"
    output = e.encrypt(my_message)

    assert_equal "jrtiqs", output
  end

  def test_it_decrypts
    e = Enigma.new
    my_message = "jrtiqs"
    output = e.decrypt(my_message)

    assert_equal "larisa", output
  end
end
