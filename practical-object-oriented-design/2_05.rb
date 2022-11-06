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