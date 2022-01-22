# bang method is !
# bang perform operation and override the original state of the object

world = "hello"
p world
world.capitalize!
p world

world.upcase!
p world

world.downcase!
p world
world.reverse!
p world