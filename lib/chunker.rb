class Chunker
  attr_reader :string

  def initialize(sting)
    @string = string
  end

  ##take in string from Chisel
  #split it into chunks of stuff (headers, lists, blah...)
  #look at pieces, check position [0]
  #decide which thing it needs to go to (header, bold, blah...)




end

##header.new is in the program
## chunker takes in the big assed string, take in a chunk, pass it in, do it's thing
##pass it on...to converter (maybe) inside will be bunch of chunks, call on friends
##to manipulate and give it back to me...like foreman
