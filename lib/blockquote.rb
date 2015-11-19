class Blockquote

  def blockquote(input)
    something = input[1..-1]
    "<blockquote><p>#{something}</p></blockquote>"
  end
end

#made into paragraph with no tag in md, then decide about italics, etc and edge case fun
