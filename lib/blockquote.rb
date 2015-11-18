class Blockquote

  def blockquote(input)
    something = input[1..-1]
    "<blockquote><p>#{something}</p></blockquote>"
  end
end
