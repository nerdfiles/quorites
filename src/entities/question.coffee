# http://schema.org/Question

class Question extends Asset
  constructor: () ->
    @position = null
    @title = null
    @image = null
    @text = null
    @key = null
    @answer = null

  save: () ->
    if @position is null
      try
        last = @answers.sort().pop()
        @position = last.position + 1
      catch e
        @position = 0

  @getter 'answers', () ->

  @getter 'image', () ->

  @getter 'unicode', () ->

  class Metadata
