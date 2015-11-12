class Chisel


  def italics(input)
    something = input[1..-2]

    "<i>#{something}</i>"

  end

  def emphasized(input)
    something = input[1..-2]
    "<em>#{something}</em>"

  end

  def strong(input)
    something = input[2..-3]
    "<strong>#{something}</strong>"

  end

  def header_parser(input)
    #hated that last mess. need gsub, maybe a counter, don't go too fast,
    #start with h3
  end


end
