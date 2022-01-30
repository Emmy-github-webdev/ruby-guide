# A mixin is a module that injects additional behavior into a class.
# A module is a toolbox or container of methods and constanats.

module Square
  def self.area(side)
    side * side
  end
end

module Rectangle 
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159
  def self.area(radius)
    PI * radius * radius
  end
end

puts Square.area(10)
puts Rectangle.area(5, 13)
puts Circle.area(7)