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
    #something should be related = h
#look at string docs
    if "#" [1..6] #check if all are #..enums
      h = 1 #reverse this to start with h5, then down
    elsif "##"
      h = 2
    else "#####"
      h = 5
    end
    something = input[1..-1]
    "<h#{h}>#{something}</h#{h}>"

  end


end
