class Header

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
end
