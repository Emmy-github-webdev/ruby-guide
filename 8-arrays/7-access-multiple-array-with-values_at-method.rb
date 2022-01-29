channels = ["CBS", "FOX", "NBC", "TVC", "AIT"]

p channels.values_at(0)
p channels.values_at(0, 4)
p channels.values_at(1, 3, 4)
p channels.values_at(0, 1, 3, 6)