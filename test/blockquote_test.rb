require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/blockquote'

class BlockquoteTest < Minitest::Test

  def test_for_blockquote
    input = ">Here is a blockquote" ##is paragraph nothing? difference between blockquote
    c = Blockquote.new
    result = c.blockquote(input)
    assert_equal "<blockquote><p>Here is a blockquote</p></blockquote>", result
  end


end
