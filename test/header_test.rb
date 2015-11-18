require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/header'

class HeaderTest < Minitest::Test

  def test_what_if_h1
    input = "#This is H1"
    c = Header.new
    result = c.header_parser(input)
    assert_equal "<h1>This is H1</h1>", result
  end

  def test_h2
    input = "##pizza"
    c = Header.new
    result = c.header_parser(input)
    assert_equal "<h2>pizza</h2>", result
  end

  def test_can_work_for_any_header
    input = "###Catdad"
    c = Header.new
    result = c.header_parser(input)
    assert_equal "<h3>Catdad</h3>", result
  end


end
