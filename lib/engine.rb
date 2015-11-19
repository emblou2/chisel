class Converter

  attr_reader :chunked_message


  def initialize(chunked_message) ##def initialize allows me to create a new object
    @chunked_message = chunked_message
  end

  ## ['##hi this is a header', 'this is a paragraph', "*this is a list"]

  def convert_message(message_array) #I can call this only on a converted object...it's like a converter object
    #I can call any methed in converter class
    message.map do |chunk|
      if chunk[0] == "#"
        Header.new(chunk) #manipulates and leaves...do your header thing line
      elsif chunk[0] == "*"
        List.new(chunk) #manipulater and leaves
      else
        Paragraph.new(chunk) ##not blockquote...manipulates and leaves does not start with anything
      end
    end

  end

  ##def Engine?
end

c = Converter.new
c.convert_message(message) #there's a dot before it and another thing, it sees a method
