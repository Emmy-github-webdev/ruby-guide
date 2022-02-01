name = "John"

if name != "Peter"
 puts "Answer is wrong"
end

puts !true
puts !1

bar = " my cool "
foo = " string "
baz = foo
baz = baz.concat(" today ")
foo = bar
bar = foo.concat(" yesterday #{baz}")
puts bar
