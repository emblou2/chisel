require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/list'

class ListTest < Minitest::Test
  def test_empty_string_retuns_empty_string
   input = ""
   c = List.new
   result = c.unordered_list(input)
   assert_equal "" , result
  end


  def test_for_unordered_list_with_one_thing

    input = "*Sushi"
    c = List.new
    result = c.unordered_list(input)
    assert_equal "<ul><li>Sushi</li></ul>", result
  end

  def test_for_ordered_list_with_one_thing
    input = "*Sushi"
    c = List.new
    result = c.ordered_list(input)
    assert_equal "<ol>\n<li>Sushi</li>\n</ol>", result
  end

  def test_for_unordered_list_with_two_things
    input = "* Sushi * Mexican"
    c = List.new
    result = c.unordered_list(input)
    assert_equal "<ul><li>Sushi</li><li>Mexican</li></ul>", result
  end

  def test_for_ordered_list_with_two_things
    input = "1.Sushi 2.Mexican"
    c = List.new
    result = c.ordered_list(input)
    assert_equal "<ol><li>Sushi</li><li>Mexican</li></ol>", result
  end

end
