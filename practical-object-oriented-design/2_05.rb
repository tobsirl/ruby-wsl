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