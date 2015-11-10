require 'pry'

require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/chisel'

class ChiselTest < Minitest::Test

  def test_chisel_exists
    input = "poo"
    c = Chisel.new(input)
    assert c
  end

  def test_if_input_exists
    input = "Some stuff"
    c = Chisel.new(input)
    assert_equal "Some stuff", c.input

  end
end
