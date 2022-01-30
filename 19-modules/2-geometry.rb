#import the circle, rectangle, square files
# require "./rectangle"
# require "./square"
# require "./circle"

require_relative "rectangle"
require_relative "square"
require_relative "circle"

puts Square.area(10)
puts Rectangle.area(5, 13)
puts Circle.area(7)