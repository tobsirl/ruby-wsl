class Bicycle
  attr_reader :size, :tape_color

  def initialize(**opts)
    @size       = args[:size]
    @tape_color = args[:tape_color]
  end
end