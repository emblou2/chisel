class Chisel

  #Want to trash it all and start over, but won't. Need
  #to refactor things I know work, move stuff into more specific
  #files, add chisel input/output files (?), get the list stuff
  #working. Going back to the markdown tutorial for a second.
  #have to lose the * for second item...maybe lstrip...nope
  #strip is about whitespace. Grrrrr!


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
####Don't forget words wrapped in <em> and <strong>
####can be combined. My *emphasized and **stronged** test* is awesome.

  def header_parser(input)
    if input.start_with?("#####")
      input.gsub("#####", "<h5>") + "</h5>"
    elsif input.start_with?("####")
      input.gsub("####", "<h4>") + "</h4>"
    elsif input.start_with?("###")
      input.gsub("###", "<h3>") + "</h3>"
    elsif input.start_with?("##")
      input.gsub("##", "<h2>") + "</h2>"
    else #input.start_with?("#")
      input.gsub("#", "<h1>") + "</h1>"
    end
  end

  def blockquote(input)
    something = input[1..-1]
    "<blockquote><p>#{something}</p></blockquote>"
  end


  def unordered_list(input)
    if input == ""
    return ""
    end

    something = input[1..-1]
    something.delete "*"

      "<ul><li>#{something}</li></ul>"
  end



  def ordered_list(input)
    if input == ""
    return ""
    end

    something = input[1..-1]
    "<ol>\n<li>#{something}</li>\n</ol>"
  end


end
