# Playing with cubes II 8kyu
# You already implemented a Cube class, but now we need your help again! I'm talking about constructors. We don't have one. 
# Let's code two: One taking an integer and one handling no given arguments!
# Also we got a problem with negative values! Correct the code so negative values will be switched to positive ones!
# The constructor taking no arguments should assign 0 to Cube's Side property.
class Cube
  # This cube needs help!
  # Define a constructor which takes one ineger, or handles no arguments
  
  def initialize(side = 0)
    @_side = side.abs
  end

  def get_side
    @_side
  end

  def set_side(new_side)
    @_side = new_side.abs
  end
end
