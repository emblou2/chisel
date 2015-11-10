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

  #def header_parser worry about later...

  #end

  def italicize(word)


  end

  def make_bold(word)



  end



end
