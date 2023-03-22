# class Bicycle
#   attr_reader :size, :tape_color

#   def initialize(**opts)
#     @size       = opts[:size]
#     @tape_color = opts[:tape_color]
#   end

#   # Every bike has the same defaults for tire and chain size
#   def spares
#     { chain: '10-speed', tire_size: '23', tape_color: tape_color }
#   end
# end

# bike = Bicycle.new(size: 'M', tape_color: 'red')
# puts bike.size
# puts bike.spares

# Embedding Multiple Types
class Bicycle
  attr_reader :style, :size, :tape_color, :front_shock, :rear_shock

  def initialize(**opts)
    @style       = opts[:style]
    @size        = opts[:size]
    @tape_color  = opts[:tape_color]
    @front_shock = opts[:front_shock]
    @rear_shock  = opts[:rear_shock]
  end

  # checking 'style' starts down a slippery slope
  def spares
    if style == :road
      { chain: '10-speed', tire_size: '23', tape_color: tape_color }
    else
      { chain: '10-speed', tire_size: '2.1', rear_shock: rear_shock }
    end
  end
end

bike = Bicycle.new(style: :mountain, size: 'S', front_shock: 'Manitou', rear_shock: 'Fox')
puts bike.spares

bike = Bicycle.new(style: :road, size: 'M', tape_color: 'red')
puts bike.spares