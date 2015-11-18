class List
  def unordered_list(input)#maybe (index, input)

        #maybe split the input subtract 1 for position
        #like 1st position is zero, 2nd is one, etc...
        #need to know how many are in the list...map? enum?
        #for zero "\n<ul>\n<li>#{something}</li>\n"
        #then  "\n<li>#{something}</li>\n</ul>\n"
        #then "<li>#{something}</li>"
        #should be a hash, then can use INDEX for position.

    if input == ""
    return ""
    end

    something = input[1..-1]


      "<ul><li>#{something}</li></ul>"
  end




  def ordered_list(input)
      ##should match unordered, but with <ol> not <ul>
      ##this should be able to be refactored once it works.
    if input == ""
    return ""
    end

    something = input[1..-1]
    "<ol>\n<li>#{something}</li>\n</ol>"
  end


end
