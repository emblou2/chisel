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

  def test_what_if_h1
    input =
    c = Chisel.new(input)
    result = Chisel.header_parser("# This is H 1")
    assert_equal "<h1> This is H 1 </h1>", result
  end
end
