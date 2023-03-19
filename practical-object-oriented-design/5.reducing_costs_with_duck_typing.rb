class Trip
  attr_reader :bicycles, :customers, :vehicle

  # This 'mechanic' argument could be of any class
  # as long as it responds to the 'prepare_bicycles' method
  def prepare(mechanic)
    mechanic.prepare_bicycles(bicycles)
  end
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| prepare_bicycle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    # ...
  end
end