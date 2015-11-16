require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/chisel'

class ChiselTest < Minitest::Test

  def test_it_can_do_italics
    input = "_Do italics_"
    c = Chisel.new
    result = c.italics(input)
    assert_equal "<i>Do italics</i>", result
  end

  def test_it_can_do_other_italics
    input = "_something something_"
    c = Chisel.new
    result = c.italics(input)
    assert_equal "<i>something something</i>", result
  end

  def test_it_can_do_emphasized
    input = "*Words are emphasized*"
    c = Chisel.new
    result = c.emphasized(input)
    assert_equal "<em>Words are emphasized</em>", result
  end

  def test_it_can_do_strong
    input = "**Words are strong**"
    c = Chisel.new
    result = c.strong(input)
    assert_equal "<strong>Words are strong</strong>", result
  end


  def test_what_if_h1
    input = "#This is H1"
    c = Chisel.new
    result = c.header_parser(input)
    assert_equal "<h1>This is H1</h1>", result
  end

  def test_h2
    input = "##pizza"
    c = Chisel.new
    result = c.header_parser(input)
    assert_equal "<h2>pizza</h2>", result
  end

  def test_can_work_for_any_header
    input = "###Catdad"
    c = Chisel.new
    result = c.header_parser(input)
    assert_equal "<h3>Catdad</h3>", result
  end

  def test_for_blockquote
    input = ">Here is a blockquote"
    c = Chisel.new
    result = c.blockquote(input)
    assert_equal "<blockquote><p>Here is a blockquote</p></blockquote>", result
  end

  def test_empty_string_retuns_empty_string
   input = ""
   c = Chisel.new
   result = c.unordered_list(input)
   assert_equal "" , result
 end


  def test_for_unordered_list_with_one_thing

    input = "*Sushi"
    c = Chisel.new
    result = c.unordered_list(input)
    assert_equal "<ul><li>Sushi</li></ul>", result
  end

  def test_for_ordered_list_with_one_thing
    input = "*Sushi"
    c = Chisel.new
    result = c.ordered_list(input)
    assert_equal "<ol>\n<li>Sushi</li>\n</ol>", result
  end


end
