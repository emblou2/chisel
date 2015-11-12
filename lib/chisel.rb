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
    symbol_count = "#"
    if symbol_count == 5
      input.gsub("##### ", "<h5>")
    elsif symbol_count == 4
      input.gsub("#### ", "<h4>")
    elsif symbol_count == 3
      input.gsub("### ", "<h3>")
    elsif symbol_count == 2
      input.gsub("## ", "<h2>")
    elsif symbol_count == 1
      input.gsub("# ", "<h1>")
    end
  end


end
