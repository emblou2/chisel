require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bold'

class BolderTest < Minitest::Test

  def test_it_can_do_italics
    input = "_Do italics_"
    c = Bolder.new
    result = c.italics(input)
    assert_equal "<i>Do italics</i>", result
  end

  def test_it_can_do_other_italics
    input = "_something something_"
    c = Bolder.new
    result = c.italics(input)
    assert_equal "<i>something something</i>", result
  end

  def test_it_can_do_emphasized
    input = "*Words are emphasized*"
    c = Bolder.new
    result = c.emphasized(input)
    assert_equal "<em>Words are emphasized</em>", result
  end

  def test_it_can_do_strong
    input = "**Words are strong**"
    c = Bolder.new
    result = c.strong(input)
    assert_equal "<strong>Words are strong</strong>", result
  end

end
