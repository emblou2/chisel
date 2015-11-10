require 'pry'

require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/chisel'

class ChiselTest < Minitest::Test

  def test_chisel_exists
    #what Justin and I talked about
    input = "poo"
    c = Chisel.new(input)
    assert c
  end

  def test_if_input_exists
    input = "Some stuff"
    c = Chisel.new(input)
    assert_equal "Some stuff", c.input
  end

  def test_it_can_do_italics
    input = "_Do italics_"
    c = Chisel.new(input)
    assert_equal "<i>Do italics</i>", c.input
  end

  def test_it_can_do_bold
    skip
    input = "*Words are bold*"
    c = Chisel.new(input)
    assert_equal "<em>Words are bold</em>", c.input
  end

  def test_it_can_do_strong_bold
    skip
    input = "**Words are strong bold**"
    c = Chisel.new(input)
    assert_equal "<strong>Words are strong bold</strong>"
  end


  def test_what_if_h1
    skip
  #What Mike and I talked about...not ready for parser yet
    c = Chisel.new(input)
    result = Chisel.header_parser("# This is H 1")
    assert_equal "<h1> This is H 1 </h1>", result
  end
end
