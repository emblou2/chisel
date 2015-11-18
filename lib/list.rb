class List
  def unordered_list(input)
    if input == ""
    return ""
    end

    something = input[1..-1]


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
