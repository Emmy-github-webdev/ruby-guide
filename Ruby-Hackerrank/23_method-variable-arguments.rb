# Your code here
def full_name(firstName, *name)
  name.reduce(firstName) {|fName, lName| "#{fName} #{lName}"}
end