chainring = 52 # number of teeth
cog = 11 
ratio = chainring / cog.to_f
puts ratio # 4.7272727272727275

chainring = 30
cog = 27
ratio = chainring / cog.to_f
puts ratio # 1.1111111111111112

class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end
  
  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * (rim + (tire * 2))
  end
  
end

puts Gear.new(52, 11).ratio # 4.7272727272727275
puts Gear.new(52, 11, 26, 1.5).gear_inches # 137.0909090909091
puts Gear.new(52, 11, 24, 1.25).gear_inches # 125.27272727272728

class Gear
  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
  end

  def ratio
    @chainring / @cog.to_f      # <-- road to ruin
  end
end

puts "1st ratio = #{Gear.new(54,11).ratio}"

class Gear
  attr_reader :chainring, :cog  # <-------
  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
  end

  def ratio
    chainring / cog.to_f        # <-------
  end
end

puts "2st ratio = #{Gear.new(54,11).ratio}"

# default-ish implementation via attr_reader
def cog
  @cog
end

# a simple reimplementation of cog
def cog
  @cog * unanticipated_adjustment_factor
end

# a more complex one
def cog
  @cog * (foo? ? bar_adjustment : baz_adjustment)
end


class Gear
  private
  attr_reader :chainring, :cog

  public
  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
  end
  # ...
  def ratio
    chainring / cog.to_f
  end
end

class Blinkered
  def cog(gear)
    gear.cog
  end
end

puts Blinkered.new.cog(Gear.new(54,11))
# => private method `cog' called for #<Gear:0x00007fa4ef926120 @chainring=54, @cog=11>

class ObscuringReferences
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def diameters
    # 0 is rim, 1 is tire
    data.collect {|cell|
      cell[0] + (cell[1] * 2)}
  end
  # ... many other methods that index into the array
end

# rim and tire sizes (now in milimeters!) in a 2D array
@data = [[622, 20], [622, 23], [559, 30], [559, 40]]

class RevealingReferences
  attr_reader :wheels
  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect {|wheel|
      wheel.rim + (wheel.tire * 2)}
  end

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect {|cell|
      Wheel.new(cell[0], cell[1])}
  end
end

class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @wheel     = Wheel.new(rim, tire)
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  Wheel = Struct.new(:rim, :tire) do
    def diameter
      rim + (tire * 2)
    end
  end
end