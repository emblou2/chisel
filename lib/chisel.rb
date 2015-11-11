require 'redcarpet'

class Chisel < Redcarpet::Render::HTML
  #Things I found for redcarpet...don't know how to use yet.
  #markdown = Redcarpet::Markdown.new(renderer, extensions = {})
  #renderer = Redcarpet::Render::HTML.new(render_options)
  #markdown = Redcarpet::Markdown.new(renderer, extensions)


  attr_reader :input, :output

  def initialize(input)
    @input = input
    @output = output
  end



    #def markdown
      #Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true)
    #end



  def emphasized(word)
      #each of these are "wrapped in tags", that means there are tag pairs
      #if there is only one tag, it's incomplete...kinda like that hands on stack lesson
      #might need a counter to keep track of odd or even amount of tags
      #if/else maybe...like counter.even...zero is even, so that would initiate first tag
      #odd would be closing tag. Same true for "*" thingy, as they are wrap the text too.


  end

  def stronged(word)
      #should be like emphasized but with different tags for html, and **stuff**
  end

  def header
      #maybe elsif because of how many headers (6) possible. these
      #are not paired in markdown, but do have tags. Can all html
      #be put into <> and </>, but with the type of thing it is on the inside


  end



end
