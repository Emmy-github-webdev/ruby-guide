fruits = ["Apple", "Orange", "Pineapple", "Banana", "Pear"]
p fruits.fetch(3)

# index that does not exist will throw error
# You can assign a default value to an array index that does not exists

p fruits.fetch(20, "Agbalumo")