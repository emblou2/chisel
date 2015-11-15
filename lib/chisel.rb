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

  def unordered_list(input) ##need map or map with index...maybe?
    something = input[1..-1]
    "<ul>\n<li>#{something}</li>\n</ul>"
  end
                            ##make it a string maybe? Need to ask!
  def ordered_list(input)
    something = input[1..-1]
    "<ol>\n<li>#{something}</li>\n</ol>"
  end

end
